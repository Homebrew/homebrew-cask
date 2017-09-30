cask 'google-drive-file-stream' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive-file-stream/GoogleDriveFileStream.dmg'
  name 'Google Drive File Stream'
  homepage 'https://www.google.com/drive/'

  conflicts_with cask: [
                         'google-backup-and-sync',
                         'google-photos-backup-and-sync',
                       ]
  depends_on macos: '>= :el_capitan'

  pkg 'GoogleDriveFileStream.pkg'

  uninstall login_item: 'Google Drive File Stream',
            quit:       'com.google.drivefs',
            pkgutil:    'com.google.drivefs'

  zap delete: '~/Library/Caches/com.google.drivefs',
      trash:  [
                '~/Library/Preferences/Google Drive File Stream Helper.plist',
                '~/Library/Preferences/com.google.drivefs.plist',
              ]
end
