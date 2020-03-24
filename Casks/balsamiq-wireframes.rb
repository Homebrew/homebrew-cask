cask 'balsamiq-wireframes' do
  version '4.0.23'
  sha256 '931db241ae178202a96f9cea501869e73bcaf5433af24a3bdc8440805b54962e'

  url "https://builds.balsamiq.com/bwd/Balsamiq%20Wireframes%20#{version}.dmg"
  appcast 'https://builds.balsamiq.com/bwd/mac.jsonp'
  name 'Balsamiq Wireframes'
  homepage 'https://balsamiq.com/'

  app 'Balsamiq Wireframes.app'

  zap trash: [
               "~/Library/Caches/BalsamiqMockups#{version.major}.*",
               "~/Library/Preferences/BalsamiqMockups#{version.major}",
               "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
               "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
             ]
end
