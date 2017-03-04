cask 'elektriktrick' do
  version '1.1.0'
  sha256 '91977be7e0e0c5929ca5ac4edf6a9430ca2e83db8ca71ef5c9ed9082c160ef54'

  url "http://www.elektriktrick.com/Downloads/Elektriktrick_#{version}.dmg"
  appcast 'http://www.elektriktrick.com/sw_quicklook.html',
          checkpoint: '4d3c5e3800ecc5b8a0d98213b3cf2902587a1d658e3118ebb6950185e485438e'
  name 'Elektriktrick STL and GCode Quicklook'
  homepage 'http://www.elektriktrick.com/sw_quicklook.html'

  app 'ElektrikTrick.app'
end
