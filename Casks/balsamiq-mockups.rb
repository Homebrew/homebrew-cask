cask 'balsamiq-mockups' do
  version '3.4.5'
  sha256 'bd50eb9a347ca26ceeb73ed51165bd3cf5cd47d57a0dc7f7aac5abaffe6a4165'

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
