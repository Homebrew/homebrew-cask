cask 'balsamiq-wireframes' do
  version '4.0.20'
  sha256 'c364584ae8cbbcf84df39129c4f2fabdd9c060658ba794e8901677b7e4bfe51b'

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
