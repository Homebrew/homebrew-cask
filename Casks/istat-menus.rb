cask 'istat-menus' do
  version '5.30'
  sha256 'd6e3726deafea1ee53d1ce6c36273720e1ab234b89925adf4be0e345717f3c73'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatmenus#{version.major}/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'https://bjango.com/mac/istatmenus/'

  app 'iStat Menus.app'

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
