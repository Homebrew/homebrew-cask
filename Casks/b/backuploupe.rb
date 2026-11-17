cask "backuploupe" do
  version "3.15.3"
  sha256 "c52930b1ad4186255939a5ca64457372d7d60f38bdd45f96a53525d0d2abdb7d"

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.xz"
  name "BackupLoupe"
  desc "Alternative GUI for Time Machine"
  homepage "https://www.soma-zone.com/BackupLoupe/"

  livecheck do
    url "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "BackupLoupe.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.soma-zone.BackupLoupe.Helper.plist",
    "/Library/PrivilegedHelperTools/com.soma-zone.BackupLoupe.Helper",
  ]

  zap trash: [
    "~/Library/Application Support/BackupLoupe",
    "~/Library/Caches/com.apple.helpd/Generated/BackupLoupe*",
    "~/Library/Logs/BackupLoupe",
    "~/Library/Preferences/com.soma-zone.BackupLoupe.plist",
  ]
end
