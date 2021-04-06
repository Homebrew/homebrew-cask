cask "blueharvest" do
  version "8.0.8"
  sha256 "fbd420271c333bb6899b51ddc45af0a360c16c003f095524e536a7f36d0d5707"

  url "https://zeroonetwenty.com/blueharvest/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast "https://zeroonetwenty.com/blueharvest/release-notes.html",
          must_contain: "#{version.no_dots}.dmg"
  name "BlueHarvest"
  homepage "https://zeroonetwenty.com/blueharvest/"

  depends_on macos: ">= :catalina"

  app "BlueHarvest.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            launchctl: "com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            quit:      "com.zeroonetwenty.BlueHarvest5"

  zap trash: [
    "~/Library/Caches/com.zeroonetwenty.BlueHarvest5",
    "~/Library/Preferences/com.zeroonetwenty.BlueHarvest5.plist",
  ]
end
