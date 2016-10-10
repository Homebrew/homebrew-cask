cask 'beersmith2' do
  version '2.3.7'
  sha256 '116b1f9f767a031bb6daa5432fad54b0318fec27c0e316ca4ed2485997686011'

  # amazonaws.com/beersmith2-3 was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/beersmith2-3/BeerSmith#{version.dots_to_underscores}.dmg"
  name 'BeerSmith2'
  homepage 'http://beersmith.com'

  app 'BeerSmith2.app'
end
