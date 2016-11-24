cask 'keyfinder' do
  version '2.2'
  sha256 '481894a3bf79b17b6b131adfac43033c545b24290e8c05bdc62f9e4849838dac'

  url "http://www.ibrahimshaath.co.uk/keyfinder/bins/KeyFinder-OSX-#{version.dots_to_hyphens}.zip"
  name 'KeyFinder'
  homepage 'http://www.ibrahimshaath.co.uk/keyfinder/'

  app 'KeyFinder-OSX/KeyFinder.app'
end
