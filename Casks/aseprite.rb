cask 'aseprite' do
  version '1.2.8'
  sha256 '0c128dd104fb76eb5417e9666310847cc601ee4bee0280a67a28eba18a121ae1'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
