cask "blueharvest" do
  version "8.2"
  sha256 "4be867ff643518784cf29e89c0715a2f36d1d84a7a4f55201042afe0fb027514"

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

  uninstall launchctl: "com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            quit:      "com.zeroonetwenty.BlueHarvest5",
            delete:    "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.major}"

  zap trash: [
    "~/Library/Caches/com.zeroonetwenty.BlueHarvest5",
    "~/Library/Preferences/com.zeroonetwenty.BlueHarvest5.plist",
  ]
end
