cask 'beersmith2' do
  version '2.3.7'
  sha256 '116b1f9f767a031bb6daa5432fad54b0318fec27c0e316ca4ed2485997686011'

  # amazonaws.com/BeerSmith2-2 was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/beersmith2-3/BeerSmith#{version.dots_to_underscores}.dmg"
  name 'BeerSmith2'
  homepage 'http://beersmith.com'
  license :commercial

  app 'BeerSmith2.app'
end
