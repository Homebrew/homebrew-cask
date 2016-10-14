cask 'bankid' do
  version '7.2.0'
  sha256 '9a3768cb9ea240faee5d4958679e17b73e5ffeb62765f3fdb2e34275ca0beb1a'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.bankid.BankID.pkg'
end
