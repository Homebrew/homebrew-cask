cask 'jami' do
  version '20190215.1947'
  sha256 '6c262710086f552fb53b4981b7c628eb4a9d441a390b7fa526da786c12a7162d'

  url "https://dl.ring.cx/mac_osx/ring-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
