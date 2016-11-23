cask 'securid' do
  version '4.1.2'
  sha256 'df0719121911cecb1917e1ca3f2a941b209db57c7585d057c00898bffefa0ec1'

  # ftp.emc.com was verified as official when first introduced to the cask
  url "ftp://ftp.emc.com/pub/agents/RSASecurIDMac#{version.no_dots}.dmg"
  name 'RSA SecurID'
  homepage 'https://www.rsa.com/en-us/products-services/identity-access-management/securid/software-tokens/software-token-for-mac-os-x'

  pkg "RSASecurIDTokenAutoMac#{version.no_dots}x64.pkg"

  uninstall pkgutil: 'com.rsa.pkg.securidsoftwaretoken'
end
