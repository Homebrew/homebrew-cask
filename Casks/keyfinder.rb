cask 'keyfinder' do
  version '2.3'
  sha256 '376d5a5ce67f9ef3d7b7ae9d2b9afdf1e98ba053b10a7288790037b77ff89f72'

  url "http://www.ibrahimshaath.co.uk/keyfinder/bins/KeyFinder-OSX-#{version.dots_to_hyphens}.zip"
  name 'KeyFinder'
  homepage 'http://www.ibrahimshaath.co.uk/keyfinder/'

  app 'KeyFinder-OSX/KeyFinder.app'
end
