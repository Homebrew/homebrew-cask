cask "blueharvest" do
  version "8.0.11"
  sha256 "d04dbc21c50fe5b2e2c9b5f2f29decff9776bad57faf3d8aac6b84f38de39861"

  url "https://zeroonetwenty.com/blueharvest/downloads/BlueHarvest#{version.no_dots}.dmg"
  name "BlueHarvest"
  desc "Remove metadata files from external drives"
  homepage "https://zeroonetwenty.com/blueharvest/"

  livecheck do
    url "https://zeroonetwenty.com/blueharvest/release-notes.html"
    regex(/>\s*Version\s+(\d+(?:\.\d+)+)/i)
  end

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
