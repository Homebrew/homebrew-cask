cask 'eve-launcher' do
  version '1548102'
  sha256 '586bbc01bf4fa913a8c06ac3fc3f540e71f0f8ee7c8af9dd42a4bf66a64d9780'

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
