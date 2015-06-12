package ONVIF::Media::Types::Dot11PSKSet;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Key_of :ATTR(:get<Key>);
my %Passphrase_of :ATTR(:get<Passphrase>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Key
        Passphrase
        Extension

    ) ],
    {
        'Key' => \%Key_of,
        'Passphrase' => \%Passphrase_of,
        'Extension' => \%Extension_of,
    },
    {
        'Key' => 'ONVIF::Media::Types::Dot11PSK',
        'Passphrase' => 'ONVIF::Media::Types::Dot11PSKPassphrase',
        'Extension' => 'ONVIF::Media::Types::Dot11PSKSetExtension',
    },
    {

        'Key' => 'Key',
        'Passphrase' => 'Passphrase',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::Dot11PSKSet

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Dot11PSKSet from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Key


=item * Passphrase


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::Dot11PSKSet
   Key => $some_value, # Dot11PSK
   Passphrase => $some_value, # Dot11PSKPassphrase
   Extension =>  { # ONVIF::Media::Types::Dot11PSKSetExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
