cask 'eve-launcher' do
  version '1146159'
  sha256 '985e5bfe602589268a67f0fc92a2188494673d4c59a9bc88f6c054f382e4878e'

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
