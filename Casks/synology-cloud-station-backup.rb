cask 'synology-cloud-station-backup' do
  version '4.2.3-4385'
  sha256 '5e8bbf41dee07cd1c124c24523958a3d60e6960c8bf5ba9a367e7eb8c2f2dbc2'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version}/Mac/Installer/synology-cloud-station-backup-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Backup'
  homepage 'https://www.synology.com/'

  pkg 'Install Cloud Station Backup.pkg'

  uninstall pkgutil:   'com.synology.CloudStationBackup',
            launchctl: 'com.synology.Synology Cloud Station Backup'

  zap delete: '~/Library/Preferences/com.synology.CloudStationBackupUI.plist'
end
