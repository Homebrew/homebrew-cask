cask "backuploupe" do
  version "3.12.2"
  sha256 "74920ed5e15777eb441a0a2a6d425f086447e4ec7438a4cb588929091c57b798"

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
