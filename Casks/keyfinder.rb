cask 'keyfinder' do
  version '2.1'
  sha256 '79a8d55ffdabb676c2166f0921dc191154f74881e13fc6b0071955a8a1e32b00'

  url "http://www.ibrahimshaath.co.uk/keyfinder/bins/KeyFinder-OSX-#{version.dots_to_hyphens}.zip"
  name 'KeyFinder'
  homepage 'http://www.ibrahimshaath.co.uk/keyfinder/'

  app 'KeyFinder-OSX/KeyFinder.app'
end
