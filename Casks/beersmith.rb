cask 'beersmith' do
  version '3.1.6'
  sha256 '049df9ff8a0f11d9ac8c70a8b37482b4a93fcda28b739a9f4775f43b55774f79'

  # beersmith3-1.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://beersmith3-1.s3.amazonaws.com/BeerSmith#{version.dots_to_underscores}.dmg"
  appcast 'https://beersmith.com/download-beersmith/',
          must_contain: version.dots_to_underscores
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
