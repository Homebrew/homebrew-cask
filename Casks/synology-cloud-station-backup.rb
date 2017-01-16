cask 'synology-cloud-station-backup' do
  version '4.2.1-4374'
  sha256 '6f4969a9f165d4b9ffe2b4c986a984b8e0a6529113fd0a604f859af98b086f2f'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version}/Mac/Installer/synology-cloud-station-backup-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Backup'
  homepage 'https://www.synology.com/'

  pkg 'Install Cloud Station Backup.pkg'

  uninstall pkgutil:   'com.synology.CloudStationBackup',
            launchctl: 'com.synology.Synology Cloud Station Backup'

  zap delete: '~/Library/Preferences/com.synology.CloudStationBackupUI.plist'
end
