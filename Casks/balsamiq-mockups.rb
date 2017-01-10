cask 'balsamiq-mockups' do
  version '3.5.6'
  sha256 '52f4ec8d234b5aa9b43a34f56d00f507ea787ce0d73615cbe3db8f7a86606ce9'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  appcast 'https://builds.balsamiq.com/mockups-desktop/version.jsonp',
          checkpoint: '8a5231223713a3e85fc302798f1646312ba65baece3a0f5595b7499df063bba6'
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
