cask 'synology-cloud-station-backup' do
  version '4.2.2-4379'
  sha256 '84a9cd61e49d22555b541fd8d90604e57091480d4180afe024d21d1dfc7f95b4'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version}/Mac/Installer/synology-cloud-station-backup-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Backup'
  homepage 'https://www.synology.com/'

  pkg 'Install Cloud Station Backup.pkg'

  uninstall pkgutil:   'com.synology.CloudStationBackup',
            launchctl: 'com.synology.Synology Cloud Station Backup'

  zap delete: '~/Library/Preferences/com.synology.CloudStationBackupUI.plist'
end
