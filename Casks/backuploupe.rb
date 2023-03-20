cask "backuploupe" do
  version "3.8.1"
  sha256 "8049fc902d667dc3571de039d326db7eb5d3b7530236ed4fd4b495a03a36c043"

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
