cask 'doxygen' do
  version '1.8.14'
  sha256 '6df23153620cfce5d05362ca47be967de9af1b3b27c0de812cd936eb680d8559'

  url "https://ftp.stack.nl/pub/users/dimitri/Doxygen-#{version}.dmg"
  appcast 'https://www.stack.nl/~dimitri/doxygen/manual/changelog.html',
          checkpoint: 'e5b59bc2ba38954f95ed92fcc7b9ff441c5afa4032b0ec605c70837d28a3a202'
  name 'Doxygen'
  homepage 'https://www.stack.nl/~dimitri/doxygen/'

  app 'Doxygen.app'
end
