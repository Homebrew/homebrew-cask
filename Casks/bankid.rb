cask 'bankid' do
  version '7.2.0'
  sha256 '0f862bd59ac52349a016745ac098a9aa8861ecb9b3032fc677aca719da40ff12'

  url "https://install.bankid.com/Repository/BankID_installation_#{version}.pkg"
  name 'BankID'
  homepage 'https://install.bankid.com/'
  license :gratis

  container type: :naked

  pkg "BankID_installation_#{version}.pkg"

  uninstall pkgutil: 'com.bankid.bankid.BankID.pkg'
end
