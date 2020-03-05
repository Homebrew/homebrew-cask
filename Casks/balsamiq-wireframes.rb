cask 'balsamiq-wireframes' do
  version '4.0.21'
  sha256 '996d0d31a194ab3fa398e21dcd30f444e5fe254620077af9da481e951a889f2f'

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
