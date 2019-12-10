cask 'jami' do
  version '20191206.1121'
  sha256 '7103ea57730d50a82c6210f28ff8de453672d67e1d218b95de0fb99b3a6104b5'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
