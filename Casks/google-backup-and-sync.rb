cask 'google-backup-and-sync' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive/InstallBackupAndSync.dmg'
  name 'Google Backup and Sync'
  homepage 'https://www.google.com/drive/download/'

  conflicts_with cask: 'google-photos-backup-and-sync'
  depends_on macos: '>= :mavericks'

  app 'Backup and Sync.app'
end
