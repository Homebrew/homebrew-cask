cask 'eve-launcher' do
  version '1770799'
  sha256 '1cd7e0d6434d87c72d7fd7e5b4761d55a7bac8fbab6e2245c4a3afeb614ae63a'

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
