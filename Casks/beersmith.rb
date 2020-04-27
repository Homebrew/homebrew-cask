cask 'beersmith' do
  version '3.0.8'
  sha256 'ac9033f214e1f3879acefe37b01698e904ad25d2b7947c7263dd5e97f13567bb'

  # beersmith-3.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://beersmith-3.s3.amazonaws.com/BeerSmith#{version.dots_to_underscores}.dmg"
  appcast 'https://beersmith.com/download-beersmith/'
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
