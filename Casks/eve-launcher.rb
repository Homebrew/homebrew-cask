cask 'eve-launcher' do
  version '1225328'
  sha256 '69de8866d986b3d24615648f9296f042b3b000d30eb6413b1fcd0650de68318e'

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
