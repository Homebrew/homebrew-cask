cask 'encryptme' do
  version '4.0.5.2'
  sha256 'cd3f2ea6c678cdbb5ffcc9fcc8844fd89e3c1322de48cc85ca71ba481dda124a'

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: '398ad0487607d6533ad138453b82e31e0453cb26733fa01324a84f7a335cba2b'
  name 'EncryptMe'
  name 'Cloak'
  homepage 'https://encrypt.me/'

  app 'EncryptMe.app'
end
