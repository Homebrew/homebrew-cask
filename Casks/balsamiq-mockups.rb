cask 'balsamiq-mockups' do
  version '3.5.3'
  sha256 'e8a2bb1a6083976641666a2db82eb15cbf3cd0fc8bc63d322e4838995257cab9'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.major}.app"

  zap delete: [
                # TODO: expand/glob for "~/Library/Caches/BalsamiqMockups#{version.major}.*",
                # TODO: expand/glob for "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
              ],
      trash:  [
                "~/Library/Preferences/BalsamiqMockups#{version.major}",
                # TODO: expand/glob for "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
              ]
end
