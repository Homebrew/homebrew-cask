cask "daisydisk" do
  version "4.12"
  sha256 "c25a591a62d0597e6d18f716655cffb0b1d0beef01d29c8b63be7ff3eb64eaae"

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
