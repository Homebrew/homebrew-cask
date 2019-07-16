cask 'doxygen' do
  version '1.8.15'
  sha256 '0be19174b88757f72d253dd2ebf22a90654738f0c4b01a71b1dc32a54d2613ae'

  url "http://doxygen.nl/files/Doxygen-#{version}.dmg"
  appcast 'http://www.doxygen.nl/download.html'
  name 'Doxygen'
  homepage 'http://www.doxygen.nl/'

  app 'Doxygen.app'
end
