cask "softraid" do
  version "9.0.2"
  sha256 "069a565830c5213ad9c76a201fea0e2f34711a0c8b0d1c287edaac822b47cfcb"

  url "https://downloads.owc.com/softraid/mac/#{version.major}/softraid-#{version}.dmg"
  name "SoftRAID"
  desc "Powerful and intuitive software RAID utility"
  homepage "https://www.softraid.com/"

  livecheck do
    url "https://download.owcdigital.com/softraid#{version.major}/mac"
    strategy :header_match
  end

  depends_on :macos

  app "SoftRAID.app"

  uninstall quit: "com.softraid.SoftRAID"

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
