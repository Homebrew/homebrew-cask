cask 'elektriktrick' do
  version '1.1.0'
  sha256 '91977be7e0e0c5929ca5ac4edf6a9430ca2e83db8ca71ef5c9ed9082c160ef54'

  url "http://www.elektriktrick.com/Downloads/Elektriktrick_#{version}.dmg"
  name 'Elektriktrick STL and GCode Quicklook'
  homepage 'http://www.elektriktrick.com/sw_quicklook.html'

  app 'ElektrikTrick.app'
end
