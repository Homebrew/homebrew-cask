cask "daisydisk" do
  version "4.25"
  sha256 :no_check

  url "https://daisydiskapp.com/download/DaisyDisk.zip"
  name "DaisyDisk"
  desc "Disk space visualizer"
  homepage "https://daisydiskapp.com/"

  livecheck do
    url "https://daisydiskapp.com/downloads/appcastFeed.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DaisyDisk.app"

  uninstall launchctl: "com.daisydiskapp.DaisyDiskAdminHelper",
            delete:    "/Library/PrivilegedHelperTools/com.daisydiskapp.DaisyDiskAdminHelper"

  zap trash: [
    "~/Library/Application Support/DaisyDisk",
    "~/Library/Caches/com.daisydiskapp.DaisyDiskStandAlone",
    "~/Library/Preferences/com.daisydiskapp.DaisyDiskStandAlone.plist",
  ]
end
