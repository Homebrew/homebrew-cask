cask 'doxygen' do
  version '1.8.14'
  sha256 '6df23153620cfce5d05362ca47be967de9af1b3b27c0de812cd936eb680d8559'

  url "https://ftp.stack.nl/pub/users/dimitri/Doxygen-#{version}.dmg"
  appcast 'https://www.stack.nl/~dimitri/doxygen/manual/changelog.html'
  name 'Doxygen'
  homepage 'https://www.stack.nl/~dimitri/doxygen/'

  app 'Doxygen.app'
end
