cask 'backup-and-sync-from-google' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive/InstallBackupAndSync.dmg'
  name 'Backup and Sync from Google'
  homepage 'https://www.google.com/drive/download/'

  app 'Backup and Sync.app'
end
