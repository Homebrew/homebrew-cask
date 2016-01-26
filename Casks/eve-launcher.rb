cask 'eve-launcher' do
  version '996833'
  sha256 '644204598e64a14c98dd3608d43ec29757e462cfc368a9ec058f87bae4b03ba1'

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'
  license :commercial

  app 'EVE Launcher.app'

  zap delete: [
                '~/Library/Preferences/com.ccpgames.EVE.plist',
                '~/Library/Application Support/EVE Online',
                '~/Library/Application Support/CCP/EVE',
              ]
end
