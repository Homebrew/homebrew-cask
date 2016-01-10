cask 'eve-launcher' do
  version '995234'
  sha256 'a4d39ded415823c9fd7ed74c95f111d98ff7c44f00fc0d76cb40e2942831a68e'

  url "http://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'
  license :commercial

  app 'EVE Launcher.app'

  zap :delete => [
                   '~/Library/Preferences/com.ccpgames.EVE.plist',
                   '~/Library/Application Support/EVE Online',
                   '~/Library/Application Support/CCP/EVE',
                 ]
end
