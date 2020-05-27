cask 'balsamiq-wireframes' do
  version '4.0.29'
  sha256 'e5b18f841df42074e863ff5786c1110d16e539f4d452b138d3cef20b358856de'

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
