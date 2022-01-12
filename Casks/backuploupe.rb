cask "backuploupe" do
  version "3.5.3,2309"
  sha256 "04ea5b8ee79ad2db71e3b048b87396b6b7b8665de9441ae230573c9b2b4e66e2"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version.csv.first}.tar.bz2"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  livecheck do
    url "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
    strategy :sparkle
  end

  app "BackupLoupe.app"

  zap trash: [
    "~/Library/Application Support/BackupLoupe",
    "~/Library/Caches/com.apple.helpd/Generated/BackupLoupe*",
    "~/Library/Preferences/com.soma-zone.BackupLoupe.plist",
    "/Library/LaunchDaemons/com.soma-zone.BackupLoupe.Helper.plist",
    "/Library/PrivilegedHelperTools/com.soma-zone.BackupLoupe.Helper",
  ]
end
