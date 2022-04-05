cask "daisydisk" do
  version "4.21.4"
  sha256 :no_check

  url "https://www.daisydiskapp.com/downloads/DaisyDisk.zip"
  name "DaisyDisk"
  desc "Disk space visualizer"
  homepage "https://daisydiskapp.com/"

  livecheck do
    url "https://daisydiskapp.com/downloads/appcastReleaseNotes.php?appEdition=Standard&osVersion=10.15"
    regex(/>\s*?Version\s+?v?(\d+(?:\.\d+)+)\s*?</i)
  end

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
