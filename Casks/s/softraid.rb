cask "softraid" do
  version "8.6.1"
  sha256 "08db9e02751d787f99e52b36364612b47b5504e232d0d16ab58b26539b21cb0c"

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
