cask 'jami' do
  version '20191209.1141'
  sha256 '1f1f34cdd69f9c59c54a559364000014695081d2ab912241da82af0df8f4f8fd'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
