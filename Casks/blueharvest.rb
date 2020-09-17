cask "blueharvest" do
  version "8.0.1"
  sha256 "a4e906fe8c0227a2b5fe02b8d82b01d5d680fed1e8bc1f3bddb86a66283061f3"

  url "https://zeroonetwenty.com/blueharvest/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast "https://zeroonetwenty.com/blueharvest/release-notes.html",
          must_contain: "#{version.no_dots}.dmg"
  name "BlueHarvest"
  homepage "https://zeroonetwenty.com/blueharvest/"

  app "BlueHarvest.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            launchctl: "com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            quit:      "com.zeroonetwenty.BlueHarvest5"

  zap trash: [
    "~/Library/Caches/com.zeroonetwenty.BlueHarvest5",
    "~/Library/Preferences/com.zeroonetwenty.BlueHarvest5.plist",
  ]
end
