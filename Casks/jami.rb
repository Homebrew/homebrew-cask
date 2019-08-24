cask 'jami' do
  version '20190822.1410'
  sha256 '93bcbd7a4a58a4482495932e47f7e2d7340d8274ab66795414d22e27a62e64a1'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
