cask 'aseprite' do
  version '1.2.8'
  sha256 '0c128dd104fb76eb5417e9666310847cc601ee4bee0280a67a28eba18a121ae1'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '3a1c7080c2b1704fbc2f06130a3fdbf5961d1bd536c2f618ff84847b646d3c46'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
