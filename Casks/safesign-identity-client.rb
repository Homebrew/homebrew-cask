cask 'safesign-identity-client' do
  version '3.0.93'
  sha256 '9c1f955293f5cea03bdaa78bc34b3b728cbbfed7fb1a4308ab337b2b52a538fd'

  # site.solutinet.com.br was verified as official when first introduced to the cask
  url "http://site.solutinet.com.br/2014/images/files/instaladores-e-manuais/Safesign-#{version.no_dots}-MacOS-driver-manual.zip"
  name 'SafeSign Identity Client'
  homepage 'https://www.aeteurope.com/our-solutions/safesign-identity-client/'

  pkg "SafeSignIC#{version.no_dots}-x86_64-MAC.pkg"

  uninstall pkgutil: 'SafeSign3.0',
            quit:    'com.aeteurope.tokenadmin'
end
