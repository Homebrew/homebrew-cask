cask 'encryptme' do
  version '4.1.0.8'
  sha256 '977e7eacf448cb3d14e01cdb2b536e0eff2e8a18dad29275efe88bf553026469'

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: 'b8ee09684565fd0dbe7449941bddc3acc09188996ffa265a3ed72697d9589304'
  name 'EncryptMe'
  name 'Cloak'
  homepage 'https://encrypt.me/'

  app 'EncryptMe.app'
end
