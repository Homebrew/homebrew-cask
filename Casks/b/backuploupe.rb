cask "backuploupe" do
  version "3.14.1"
  sha256 "c66bab44970efa68d91c50e43412344e7a639265c6f4ce2567faaa3550a46e81"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.xz"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  livecheck do
    url "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "BackupLoupe.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.soma-zone.BackupLoupe.Helper.plist",
    "/Library/PrivilegedHelperTools/com.soma-zone.BackupLoupe.Helper",
  ]

  zap trash: [
    "~/Library/Application Support/BackupLoupe",
    "~/Library/Caches/com.apple.helpd/Generated/BackupLoupe*",
    "~/Library/Preferences/com.soma-zone.BackupLoupe.plist",
  ]
end
