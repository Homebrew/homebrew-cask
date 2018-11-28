cask 'beersmith3' do
  version '3.0.8'
  sha256 'ac9033f214e1f3879acefe37b01698e904ad25d2b7947c7263dd5e97f13567bb'

  # amazonaws.com/beersmith-3 was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/beersmith-3/BeerSmith#{version.dots_to_underscores}.dmg"
  name 'BeerSmith3'
  homepage 'https://beersmith.com/'

  app 'BeerSmith3.app'

  zap trash: [
               '~/Library/Application Support/BeerSmith3',
               '~/Library/Caches/BeerSmith-LLC.BeerSmith3',
               '~/Library/Preferences/BeerSmith-LLC.BeerSmith3.plist',
               '~/Library/Saved Application State/BeerSmith-LLC.BeerSmith3.savedStat',
             ]
end
