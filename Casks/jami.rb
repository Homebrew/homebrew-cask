cask 'jami' do
  version '20190828.1235'
  sha256 'c36213500b17990bacb1578260a2ab82dbd021563c7591139a931b6abeb5ff8d'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
