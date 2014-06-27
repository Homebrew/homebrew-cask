class Bankid < Cask
  version '4.19.4'
  sha256 'b646b0d37ab7e5fa606ece299c6b8fba861dbd5a5cf99fd5fd39eeaba5ff807c'

  url 'https://install.bankid.com/Repository/BankID_installation_4.19.4.pkg'
  homepage 'http://www.bankid.com/'

  install 'BankID_installation_4.19.4.pkg'
  uninstall :pkgutil => 'com.bankid.bankid.BankID.pkg'
end
