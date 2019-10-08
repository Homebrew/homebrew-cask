cask 'eve-launcher' do
  version '1564277'
  sha256 '1135b0623e74ceb0ae34dfdf940813e3e29db3c46d11a050183d4e52287b75cd'

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  appcast 'https://launcher.eveonline.com/launcherVersions.json'
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'

  auto_updates true

  app 'EVE Launcher.app'

  zap trash: [
               '~/Library/Preferences/com.ccpgames.EVE.plist',
               '~/Library/Application Support/EVE Online',
               '~/Library/Application Support/CCP/EVE',
             ]
end
