cask 'bankid' do
  version '7.3.0'
  sha256 '6f0045c06c88a7c56f08ccf7aa6ccb036fd6552dfbf8860ec5f8cbc9fb48f2ad'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.BankID'
end
