cask 'istat-menus' do
  version '5.31'
  sha256 'e2d0aff2d05ad550219b1cc663030fca7bb316f9b4eec6876d5c87c5ce6a36da'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatmenus#{version.major}/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'https://bjango.com/mac/istatmenus/'

  app 'iStat Menus.app'

  uninstall quit: [
                    'com.bjango.iStat-Menus-Notifications',
                    'com.bjango.iStatMenusAgent',
                    'com.bjango.istatmenusstatus',
                  ]

  zap delete: [
                "/Library/Application Support/iStat Menus #{version.major}",
                '/Library/LaunchAgents/com.bjango.istatmenusagent.plist',
                '/Library/LaunchAgents/com.bjango.istatmenusnotifications.plist',
                '/Library/LaunchAgents/com.bjango.istatmenusstatus.plist',
                '/Library/LaunchDaemons/com.bjango.istatmenusdaemon.plist',
                '~/Library/Caches/com.bjango.istatmenus',
                '~/Library/Caches/com.bjango.istatmenusstatus',
                '~/Library/Logs/iStat Menus',
                "~/Library/Preferences/com.bjango.istatmenus#{version.major}.extras.plist",
                '~/Library/Preferences/com.bjango.istatmenusstatus.plist',
              ]
end
