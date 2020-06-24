cask 'beersmith' do
  version '3.1.5'
  sha256 'b63093792ce02ba175414ae620dbbada9cfdd91ec0ed4d84e5b60699a5b76ce8'

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
