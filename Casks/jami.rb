cask 'jami' do
  version '20191002.1514'
  sha256 '6e21be307b182edcdb92fe8053835f34bba129626eb5ff6307956c7a53ecbfe0'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
