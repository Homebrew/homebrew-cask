cask 'cryptoplugin' do
  version '1.2.2'
  sha256 '97934a670ed0ab7e9eb0bcf992458cc6fcab428249300d3d3369b4943d9563a7'

  url "https://eo.privatbank.ua/service/sign/CryptoPlugin/install/cryptoplugin-#{version}.zip"
  name 'PrivatBank Crypto Plugin'
  homepage 'https://client-bank.privatbank.ua/'

  installer script: "#{staged_path}/cryptoplugin-#{version}.app/Contents/Resources/install.sh"

  uninstall script: "#{staged_path}/cryptoplugin-#{version}.app/Contents/Resources/remove.sh"
end
