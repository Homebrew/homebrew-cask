cask 'eve-launcher' do
  version '1134875'
  sha256 'db74fdf59dba0bffd2cef224ca49d8fd9d150bd55444884dcaae99797e27535d'

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'

  depends_on macos: '>= :mavericks'

  app 'EVE Launcher.app'

  zap delete: [
                '~/Library/Preferences/com.ccpgames.EVE.plist',
                '~/Library/Application Support/EVE Online',
                '~/Library/Application Support/CCP/EVE',
              ]
end
