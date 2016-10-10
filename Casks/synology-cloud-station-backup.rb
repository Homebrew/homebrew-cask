cask 'synology-cloud-station-backup' do
  version '4.1-4224'
  sha256 '9e6e0ef536d4a19913bb9e1da3d3c38b3eb1852c4f08ad760318facd25bb4f78'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version}/Mac/Installer/synology-cloud-station-backup-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Backup'
  homepage 'https://www.synology.com'

  pkg 'Install Cloud Station Backup.pkg'

  uninstall pkgutil:   'com.synology.CloudStationBackup',
            launchctl: 'com.synology.Synology Cloud Station Backup'

  zap delete: '~/Library/Preferences/com.synology.CloudStationBackupUI.plist'
end
