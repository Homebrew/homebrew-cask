cask 'eve-launcher' do
  version '1657059'
  sha256 'f5630b942e49ed11ccee134820a27f4dccc8d4da806ff9bd216de14ad8727ef8'

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
