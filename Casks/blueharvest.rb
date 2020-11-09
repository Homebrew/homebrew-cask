cask "blueharvest" do
  version "8.0.4"
  sha256 "24cba7a436a51c9249b8c1f5f660231915b1d74e53e558a9a8a693b9ba3e54ab"

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
