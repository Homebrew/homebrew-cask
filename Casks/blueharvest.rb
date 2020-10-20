cask "blueharvest" do
  version "8.0.3"
  sha256 "b1e17835730b5576d4ab6f7779d2a9c86e227af7d76d739f2c6623a4d2d9da21"

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
