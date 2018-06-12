cask 'openmw' do
  version '0.43.0'
  sha256 '1ed16a237d652749594c78715e47b1943afc18a4004fe12e3c74bcd314070793'

  url "https://downloads.openmw.org/osx/OpenMW-#{version}.dmg"
  appcast 'https://github.com/OpenMW/openmw/releases.atom'
  name 'OpenMW'
  homepage 'https://openmw.org/'

  app 'OpenMW.app'
  app 'OpenMW-CS.app'
end
