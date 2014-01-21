class Bankid < Cask
  url 'https://install.bankid.com/Repository/BankID_installation_4.19.4.pkg'
  homepage 'http://www.bankid.com/'
  version '4.19.4'
  sha1 'cc7bb5363cd315f9196c09248eecf742888cb8ce'
  install 'BankID_installation_4.19.4.pkg'
  uninstall :pkgutil => 'com.bankid.bankid.BankID.pkg'
end
