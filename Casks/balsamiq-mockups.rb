cask 'balsamiq-mockups' do
  version '3.5.7'
  sha256 '6195e3ecd34709d454634bee9263c30ea250d00576201fea2c4bc3ee52f69535'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  appcast 'https://builds.balsamiq.com/mockups-desktop/version.jsonp',
          checkpoint: '99836870089ae0f6f5ac88ba6c529fe5f2b6922714e93f57ae964905f0889b17'
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'

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
