cask 'eve-launcher' do
  version '1045952'
  sha256 '9ed265c3968f01ca608484a1146c22303bdfa0c1af6ff906fe469354c8640864'

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'

  app 'EVE Launcher.app'

  zap delete: [
                '~/Library/Preferences/com.ccpgames.EVE.plist',
                '~/Library/Application Support/EVE Online',
                '~/Library/Application Support/CCP/EVE',
              ]
end
