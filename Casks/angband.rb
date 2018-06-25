cask 'angband' do
  version '4.1.2'
  sha256 'df8316bb4fb811c878298051db0b51f17a37d7420420463270939d80e322a6f3'

  url "http://rephial.org/downloads/#{version.major_minor}/Angband-#{version}-osx.dmg"
  appcast 'http://rephial.org/release/'
  name 'Angband'
  homepage 'http://rephial.org/'

  app 'Angband.app'
end
