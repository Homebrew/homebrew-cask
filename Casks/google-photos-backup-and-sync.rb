cask 'google-photos-backup-and-sync' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive/InstallPhotosBackupAndSync.dmg'
  name 'Google Photos Backup And Sync'
  homepage 'https://photos.google.com/apps'

  conflicts_with cask: [
                         'google-backup-and-sync',
                         'google-drive-file-stream',
                       ]
  depends_on macos: '>= :mavericks'

  app 'Backup and Sync.app'

  uninstall login_item: 'Backup and sync from Google',
            quit:       'com.google.GoogleDrive'

  zap delete: [
                '~/Library/Application Scripts/com.google.GoogleDrive.FinderSyncAPIExtension',
                '~/Library/Caches/com.google.GoogleDrive',
                '~/Library/Containers/com.google.GoogleDrive.FinderSyncAPIExtension',
                '~/Library/Cookies/com.google.GoogleDrive.binarycookies',
                '~/Library/Group Containers/google_drive',
              ],
      trash:  [
                '~/Library/Application Support/Google/Drive',
                '~/Library/Preferences/com.google.GoogleDrive.plist',
              ]
end
