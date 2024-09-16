cask "softraid" do
  version "8.3"
  sha256 "abfe743fae7aa5cc8757400caac9ab35b3964bc9d69c05c4bde904d03d7723c0"

  url "https://downloads.owc.com/softraid/mac/#{version.major}/SoftRAID%20#{version}.dmg",
      verified: "downloads.owc.com/softraid/"
  name "SoftRAID"
  desc "Powerful and intuitive software RAID utility"
  homepage "https://www.softraid.com/"

  livecheck do
    url "https://download.owcdigital.com/softraid#{version.major}/mac"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "SoftRAID.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.softraid.SoftRAID.help*#{version}/",
    "~/Library/Caches/com.softraid.SoftRAID_AM_#{version.major}",
    "~/Library/HTTPStorages/com.softraid.SoftRAIDMonitor/",
    "~/Library/LaunchAgents/com.softraid.SoftRAIDMonitor.plist",
    "~/Library/LaunchDaemons/com.OWC.HelperTool.RepairSRTool.plist",
    "~/Library/LaunchDaemons/com.softraid.softtraidd.plist",
    "~/Library/Preferences/com.softraid.SoftRAID.plist",
    "~/Library/Preferences/com.softraid.SoftRAIDMonitor.plist",
  ]
end
