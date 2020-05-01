cask 'jami' do
  version '20200501.0831'
  sha256 'fb5a4e4191f31a78386092477c3896a1f00de5bec3e052ca9c2cc997b342b42d'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
