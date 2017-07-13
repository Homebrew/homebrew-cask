cask 'google-photos-backup-and-sync' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive/InstallPhotosBackupAndSync.dmg'
  name 'Google Photos Backup And Sync'
  homepage 'https://photos.google.com/apps'

  conflicts_with cask: 'google-backup-and-sync'
  depends_on macos: '>= :mavericks'

  app 'Backup and Sync.app'
end
