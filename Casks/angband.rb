cask 'angband' do
  version '4.1.2'
  sha256 'df8316bb4fb811c878298051db0b51f17a37d7420420463270939d80e322a6f3'

  url "http://rephial.org/downloads/#{version.major_minor}/Angband-#{version}-osx.dmg"
  appcast 'http://rephial.org/release/',
          checkpoint: 'b0dd29bfd77e29f9c75b23d0419099e02beec6d832d4e2214bf73da775b3c62a'
  name 'Angband'
  homepage 'http://rephial.org/'

  app 'Angband.app'
end
