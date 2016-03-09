cask 'securid' do
  version '4.1.2'
  sha256 'df0719121911cecb1917e1ca3f2a941b209db57c7585d057c00898bffefa0ec1'

  url "ftp://ftp.emc.com/pub/agents/RSASecurIDMac#{version.delete('.')}.dmg"
  name 'RSA SecurID'
  homepage 'https://www.emc.com/security/rsa-securid/rsa-securid-software-authenticators/mac-os.htm'
  license :gratis

  pkg "RSASecurIDTokenAutoMac#{version.delete('.')}x64.pkg"

  uninstall pkgutil: 'com.rsa.pkg.securidsoftwaretoken'
end
