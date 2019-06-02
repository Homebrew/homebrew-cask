cask 'jami' do
  version '20190602.0216'
  sha256 'fc813559c65295796fd5b9b69da31cec4a5e98fea5213e792f7fcfa9c2dbcf9c'

  url "https://dl.ring.cx/mac_osx/ring-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
