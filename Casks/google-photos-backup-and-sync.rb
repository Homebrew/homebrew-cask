cask "google-photos-backup-and-sync" do
  version "3.53.3471.0626"
  sha256 :no_check

  url "https://dl.google.com/drive/InstallPhotosBackupAndSync.dmg"
  name "Google Photos Backup And Sync"
  homepage "https://photos.google.com/apps"

  conflicts_with cask: "google-backup-and-sync"

  app "Backup and Sync.app"

  uninstall quit: "com.google.GoogleDrive"

  zap trash: [
    "~/Library/Application Scripts/com.google.GoogleDrive.FinderSyncAPIExtension",
    "~/Library/Application Support/Google/Drive",
    "~/Library/Caches/com.google.GoogleDrive",
    "~/Library/Containers/com.google.GoogleDrive.FinderSyncAPIExtension",
    "~/Library/Cookies/com.google.GoogleDrive.binarycookies",
    "~/Library/Group Containers/google_drive",
    "~/Library/Preferences/com.google.GoogleDrive.plist",
  ]

  caveats <<~EOS
    Although #{token} may be installed alongside google-drive-file-stream, you should not use the same account with both.

      https://support.google.com/a/answer/7496409#allowboth
  EOS
end
