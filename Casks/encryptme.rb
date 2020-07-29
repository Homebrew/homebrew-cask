cask 'encryptme' do
  version '4.2.3'
  sha256 '036c693afa300fa3374863860b11595e8849bb76021667dc65401b48ab935238'

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/'
  name 'EncryptMe'
  name 'Cloak'
  homepage 'https://encrypt.me/'

  auto_updates true

  app 'EncryptMe.app'
end
