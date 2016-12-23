cask 'eve-launcher' do
  version '1104888'
  sha256 '7bbb94efe41638e222d0cbfb6cb13803b07a6df6f075a0586e91669c9efde3fc'

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
