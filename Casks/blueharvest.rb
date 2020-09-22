cask "blueharvest" do
  version "8.0.2"
  sha256 "5c0e75d9aa1d1c086f8c2418faf1179d7549cd176ce0c36bcdeb6ff4824b4ec9"

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
