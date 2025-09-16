cask "softraid" do
  version "8.6"
  sha256 "a0dc8fdf65d3b28c82af2dc3b3e6e94309fb14817c5c985d55b1a77f41d3c441"

  url "https://downloads.owc.com/softraid/mac/#{version.major}/softraid-#{version}.dmg",
      verified: "downloads.owc.com/softraid/"
  name "SoftRAID"
  desc "Powerful and intuitive software RAID utility"
  homepage "https://www.softraid.com/"

  livecheck do
    url "https://download.owcdigital.com/softraid#{version.major}/mac"
    strategy :header_match
  end

  app "SoftRAID.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.softraid.SoftRAID.help*#{version}",
    "~/Library/Caches/com.softraid.SoftRAID_AM_#{version.major}",
    "~/Library/HTTPStorages/com.softraid.SoftRAIDMonitor",
    "~/Library/LaunchAgents/com.softraid.SoftRAIDMonitor.plist",
    "~/Library/LaunchDaemons/com.OWC.HelperTool.RepairSRTool.plist",
    "~/Library/LaunchDaemons/com.softraid.softtraidd.plist",
    "~/Library/Preferences/com.softraid.SoftRAID.plist",
    "~/Library/Preferences/com.softraid.SoftRAIDMonitor.plist",
  ]
end
