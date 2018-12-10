cask 'doxygen' do
  version '1.8.14'
  sha256 '6df23153620cfce5d05362ca47be967de9af1b3b27c0de812cd936eb680d8559'

  url "http://doxygen.nl/files/Doxygen-#{version}.dmg"
  appcast 'http://www.doxygen.nl/manual/changelog.html'
  name 'Doxygen'
  homepage 'http://www.doxygen.nl'

  app 'Doxygen.app'
end
