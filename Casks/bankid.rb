cask 'bankid' do
  version '7.7.0'
  sha256 '53e7f59049d32e541c6bdd584f88211f89ed3fb82430f4ce1bf7f5a6ab6bed65'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.BankID'
end
