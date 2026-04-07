cask "backblaze-restore" do
  version "10.0.0.1030"
  sha256 :no_check

  url "https://f000.backblazeb2.com/file/b2-computer-backup-public/macos/standalone-restore/backblaze_restore.dmg",
      verified: "f000.backblazeb2.com/file/b2-computer-backup-public/"
  name "Backblaze Restore"
  desc "Computer backup restore client"
  homepage "https://backblaze.com/"

  livecheck do
    url "https://backblaze.com/computer-backup/docs/restore-app-release-notes-mac"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "BackblazeRestore.app", target: "Backblaze Restore.app"

  zap trash: [
    "~/Library/Application Support/BackblazeRestore",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.backblaze.backblazerestore.sfl*",
    "~/Library/Logs/BackblazeRestore",
    "~/Library/Preferences/com.backblaze.BackblazeRestore.plist",
  ]
end
