cask 'idrive' do
  version :latest
  sha256 :no_check

  url 'https://www.idrive.com/downloads/IDrive.dmg'
  name 'iDrive'
  homepage 'https://www.idrive.com/'

  pkg 'IDrive.pkg'

  uninstall launchctl: [
                         'IDSyncDaemon',
                         'IDWifiManager',
                         'IDriveDaemon',
                       ],
            pkgutil:   'com.profsoftnet.idrive.*',
            quit:      [
                         'com.prosfotnet.IDWifiManager',
                         'com.prosoftnet.IDrive',
                         'com.prosoftnet.IDriveDaemon',
                         'com.prosoftnet.IDriveMonitor',
                       ]

  zap trash: [
               '/Library/Application Support/IDriveforMac',
               '~/Library/Application Support/IDriveforMac',
               '~/Library/Caches/com.prosoftnet.IDriveMonitor',
               '~/Library/Preferences/com.prosoftnet.IDrive.plist',
               '~/Library/Preferences/com.prosoftnet.IDriveMonitor.plist',
             ]
end
