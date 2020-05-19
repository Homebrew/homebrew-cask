cask 'encryptme' do
  version '4.2.1'
  sha256 '3971992f81456f13d35b1781fae84b4776a3a64128c1e4507a79da3c967a2963'

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/'
  name 'EncryptMe'
  name 'Cloak'
  homepage 'https://encrypt.me/'

  auto_updates true

  app 'EncryptMe.app'
end
