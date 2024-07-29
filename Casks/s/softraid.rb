cask "softraid" do
  version "8.1"
  sha256 "511d1524c04af21f99ffa378f88306a613487a3c1deb36b27d19973fb3f9eca1"

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
