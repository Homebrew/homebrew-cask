cask 'jami' do
  version '20181219.1734'
  sha256 '795d49b2c5c71826a53422f12c0e92efe83f9dab3dfa9d634fded7da270d8c75'

  url "https://dl.ring.cx/mac_osx/ring-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
