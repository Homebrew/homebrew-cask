cask "daisydisk" do
  version "4.11"
  sha256 "c1014689dd105494fba0b66a315fff21aa87758f383d02c79eef6e3b72cf1756"

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
