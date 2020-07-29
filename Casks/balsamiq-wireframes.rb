cask 'balsamiq-wireframes' do
  version '4.0.30'
  sha256 'f5818ffb00deeb64d9c4346332d494211d08434e4916bd59b2cec3e99cc56c84'

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
