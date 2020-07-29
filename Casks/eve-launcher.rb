cask 'eve-launcher' do
  version '1747682'
  sha256 'bc47f261a579c4ce021102502e1f844202d53caebb76b982bc593bb378576252'

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
