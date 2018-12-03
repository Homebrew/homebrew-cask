cask 'beersmith' do
  version '3.0.8'
  sha256 'ac9033f214e1f3879acefe37b01698e904ad25d2b7947c7263dd5e97f13567bb'

  # amazonaws.com/beersmith-#{version.major} was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/beersmith-#{version.major}/BeerSmith#{version.dots_to_underscores}.dmg"
  appcast 'http://beersmith.com/download-beersmith/'
  name 'BeerSmith'
  homepage 'https://beersmith.com/'

  app "BeerSmith#{version.major}.app"

  zap trash: [
               '~/Library/Application Support/BeerSmith.*',
               '~/Library/Caches/BeerSmith-LLC.BeerSmith.*',
               '~/Library/Preferences/BeerSmith-LLC.BeerSmith.*.plist',
               '~/Library/Saved Application State/BeerSmith-LLC.BeerSmith.*.savedStat',
             ]
end
