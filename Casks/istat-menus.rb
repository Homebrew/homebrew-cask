cask 'istat-menus' do
  version '5.30'
  sha256 '421d1f962fbdc2369e10f5110d684dc3cf3105bcf6cbddd85613abd970d0ecea'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatmenus5/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'https://bjango.com/mac/istatmenus/'

  app 'iStat Menus.app'

  zap delete: [
                '/Library/Application Support/iStat Menus #{version.major}',
                '/Library/LaunchAgents/com.bjango.istatmenusagent.plist',
                '/Library/LaunchAgents/com.bjango.istatmenusnotifications.plist',
                '/Library/LaunchAgents/com.bjango.istatmenusstatus.plist',
                '/Library/LaunchDaemons/com.bjango.istatmenusdaemon.plist',
                '~/Library/Caches/com.bjango.istatmenus',
                '~/Library/Caches/com.bjango.istatmenusstatus',
                '~/Library/Logs/iStat Menus',
                '~/Library/Preferences/com.bjango.istatmenus5.extras.plist',
                '~/Library/Preferences/com.bjango.istatmenusstatus.plist',
              ]
end
