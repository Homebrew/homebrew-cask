cask 'balsamiq-mockups' do
  version '3.5.17'
  sha256 'a89f2a7959bc7f987710b7f3d6ae665e5765180dd02763d1b5f953415c130df2'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  appcast 'https://builds.balsamiq.com/mockups-desktop/version.jsonp'
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'

  app "Balsamiq Mockups #{version.major}.app"

  zap trash: [
               "~/Library/Caches/BalsamiqMockups#{version.major}.*",
               "~/Library/Preferences/BalsamiqMockups#{version.major}",
               "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
               "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
             ]
end
