cask "backuploupe" do
  version "3.5.2,2278"
  sha256 "6da206643865ddf64b32e5733b9b4bd66a600c82cfd4dd44f62a971fe1e3c392"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version.before_comma}.tar.bz2"
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
