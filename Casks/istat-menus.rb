cask 'istat-menus' do
  version '5.31'
  sha256 '03089f2760b0290f200f96649cab674c163e18023e4f4ec5ca0af8258c26b2c6'

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
