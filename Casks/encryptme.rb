cask 'encryptme' do
  version '4.1.1.1'
  sha256 'e71529d161824166f06f794e7d01dac2283125c4b0994352a8f6ff0ab4247baf'

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/'
  name 'EncryptMe'
  name 'Cloak'
  homepage 'https://encrypt.me/'

  app 'EncryptMe.app'
end
