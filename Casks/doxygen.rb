cask 'doxygen' do
  version '1.8.17'
  sha256 'bf051b2c26ad5569efe9ca09396199340d03c6c96d61b730d50d5cd8f547425b'

  url "http://doxygen.nl/files/Doxygen-#{version}.dmg"
  appcast 'http://www.doxygen.nl/download.html'
  name 'Doxygen'
  homepage 'http://www.doxygen.nl/'

  app 'Doxygen.app'
end
