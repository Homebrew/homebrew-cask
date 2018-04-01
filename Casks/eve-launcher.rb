cask 'eve-launcher' do
  version '1183418'
  sha256 '76cf6bc68bb3c38cf2f584e8e8eb9010754e65489ffad3efa686c65e48cb1151'

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'

  depends_on macos: '>= :mavericks'

  app 'EVE Launcher.app'

  zap trash: [
               '~/Library/Preferences/com.ccpgames.EVE.plist',
               '~/Library/Application Support/EVE Online',
               '~/Library/Application Support/CCP/EVE',
             ]
end
