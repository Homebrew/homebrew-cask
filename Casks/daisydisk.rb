cask "daisydisk" do
  version "4.12"
  sha256 "d77ef3d0b96f46e61adcb827f51badb2a3199cdbcd6d774c8dfe9b4fc8fcddbe"

  url "https://www.daisydiskapp.com/downloads/DaisyDisk.zip"
  appcast "https://daisydiskapp.com/downloads/appcastReleaseNotes.php?appEdition=Standard&osVersion=10.15"
  name "DaisyDisk"
  desc "Disk space visualizer"
  homepage "https://daisydiskapp.com/"

  auto_updates true

  app "DaisyDisk.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.daisydiskapp.DaisyDiskAdminHelper",
            launchctl: "com.daisydiskapp.DaisyDiskAdminHelper"

  zap trash: [
    "~/Library/Application Support/DaisyDisk",
    "~/Library/Caches/com.daisydiskapp.DaisyDiskStandAlone",
    "~/Library/Preferences/com.daisydiskapp.DaisyDiskStandAlone.plist",
  ]
end
