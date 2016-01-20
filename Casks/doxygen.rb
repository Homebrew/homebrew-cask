cask 'doxygen' do
  version '1.8.11'
  sha256 '81ce64ad3d9b72de1b6eebd0a316d364f7e97d43b604875b20fe444f12cfceab'

  url "http://ftp.stack.nl/pub/users/dimitri/Doxygen-#{version}.dmg"
  appcast 'https://www.stack.nl/~dimitri/doxygen/manual/changelog.html',
          checkpoint: '47d68c2c457a2d6e3840bd189da9d6f4b4b71389e0bf17166a673d60703dd8dd'
  name 'Doxygen'
  homepage 'https://www.stack.nl/~dimitri/doxygen/'
  license :gpl

  app 'Doxygen.app'
end
