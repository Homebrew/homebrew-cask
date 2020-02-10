cask 'encryptme' do
  version '4.2.0'
  sha256 '23b9e7f15eeacc7e24f4301585e391371b95fa643150b1b84edaac0ee64adcd9'

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/'
  name 'EncryptMe'
  name 'Cloak'
  homepage 'https://encrypt.me/'

  auto_updates true

  app 'EncryptMe.app'
end
