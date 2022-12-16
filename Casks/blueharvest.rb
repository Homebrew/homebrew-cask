cask "blueharvest" do
  version "8.1.4"
  sha256 "284f4cb0c613600763508fb9255becaa2cdfe01ff9b38bacea9323dcd2b8469e"

  url "https://zeroonetwenty.com/blueharvest/downloads/BlueHarvest#{version.no_dots}0.dmg"
  name "BlueHarvest"
  desc "Remove metadata files from external drives"
  homepage "https://zeroonetwenty.com/blueharvest/"

  livecheck do
    url "https://zeroonetwenty.com/blueharvest/release-notes.html"
    regex(/>\s*Version\s+(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
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
