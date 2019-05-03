cask 'eve-launcher' do
  version '1476049'
  sha256 'f5a1283077098dc6886183fbb1716cbd776c4309fc4e9d50ab54ce4b3659b27c'

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  appcast 'https://launcher.eveonline.com/launcherVersions.json'
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'

  app 'EVE Launcher.app'

  zap trash: [
               '~/Library/Preferences/com.ccpgames.EVE.plist',
               '~/Library/Application Support/EVE Online',
               '~/Library/Application Support/CCP/EVE',
             ]
end
