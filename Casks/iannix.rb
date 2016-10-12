cask 'iannix' do
  version '0.9.17'
  sha256 '1567387a6aab0ab58a267c672d33372b843ebd1b12204277eef837b932caf2b1'

  url "http://www.iannix.org/download/iannix_mac_64__#{version.dots_to_underscores}.dmg"
  name 'IanniX'
  homepage 'http://www.iannix.org/'

  app 'IanniX/IanniX.app'
end
