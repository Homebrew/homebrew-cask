cask 'encryptme' do
  version '4.0.6.1'
  sha256 '856ddf10498c1c8bc58961c4e8b757af14bcc7bf844b58001fe41dad9d6188cc'

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: 'cc2cd3a296eb8cb667426e368ad13b0231d038dca9b564d04cd0eac3b2255ca5'
  name 'EncryptMe'
  name 'Cloak'
  homepage 'https://encrypt.me/'

  app 'EncryptMe.app'
end
