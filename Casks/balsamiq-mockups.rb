cask 'balsamiq-mockups' do
  version '3.5.13'
  sha256 'f2a6afc250a0d933f9f9aa73f5f65ad2c1f34161fb12dcbc84154c8cfb4b59ae'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  appcast 'https://builds.balsamiq.com/mockups-desktop/version.jsonp',
          checkpoint: '28b33f160de8915347e3baea1680179c72c4ac31cd86d2f67f138a6f8194580d'
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'

  app "Balsamiq Mockups #{version.major}.app"

  zap delete: [
                "~/Library/Caches/BalsamiqMockups#{version.major}.*",
                "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
              ],
      trash:  [
                "~/Library/Preferences/BalsamiqMockups#{version.major}",
                "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
              ]
end
