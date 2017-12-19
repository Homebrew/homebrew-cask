cask 'keyfinder' do
  version '2.4'
  sha256 'a44f29e5eaaf5d51c3108bea9cb145599c993dfa8ee0b3770a0ecef4f048dfa3'

  url "http://www.ibrahimshaath.co.uk/keyfinder/bins/KeyFinder-OSX-#{version.dots_to_hyphens}.zip"
  name 'KeyFinder'
  homepage 'http://www.ibrahimshaath.co.uk/keyfinder/'

  app 'KeyFinder-OSX/KeyFinder.app'
end
