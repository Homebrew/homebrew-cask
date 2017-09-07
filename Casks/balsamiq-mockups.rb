cask 'balsamiq-mockups' do
  version '3.5.14'
  sha256 'a2688b63188adbdd8db92015085c1d35ccf2b0d556f6e09b41f6b669c0590ef1'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  appcast 'https://builds.balsamiq.com/mockups-desktop/version.jsonp',
          checkpoint: '1887e2f8a312837cab4276fe35d57aed900e3476fd089ac67ccb8091a2225746'
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
