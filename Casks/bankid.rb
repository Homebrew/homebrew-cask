cask 'bankid' do
  version '7.4.0'
  sha256 'c014b5580b848cd649671b2e0e00c3eacba1e3c78e5fb8ac2166ea0a02f5d0d8'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.BankID'
end
