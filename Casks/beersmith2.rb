cask 'beersmith2' do
  version '2.3.12'
  sha256 'd0ea232213d13ed18a1d49dfcd102824d85858618745274f4ff9a71559281e69'

  # amazonaws.com/beersmith2-3 was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/beersmith2-3/BeerSmith#{version.dots_to_underscores}.dmg"
  name 'BeerSmith2'
  homepage 'https://beersmith.com/'

  app 'BeerSmith2.app'
end
