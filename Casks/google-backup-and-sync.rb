cask 'google-backup-and-sync' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive/InstallBackupAndSync.dmg'
  name 'Google Backup and Sync'
  homepage 'https://www.google.com/drive/download/'

  app 'Backup and Sync.app'
end
