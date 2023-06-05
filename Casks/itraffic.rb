cask "itraffic" do
  version "0.1.6"
  sha256 "9ab2db0196ae0ffa0d6f9f66f27ed041c4fe77266cb7d978cc0ff8a25376f9d2"

  url "https://github.com/foamzou/ITraffic-monitor-for-mac/releases/download/v#{version}/ITraffic-v#{version}.zip"
  name "itraffic"
  desc "Monitor for displaying process traffic on status bar"
  homepage "https://github.com/foamzou/ITraffic-monitor-for-mac"

  depends_on macos: ">= :catalina"

  app "ITraffic.app"

  zap trash: [
    "~/Library/Application Scripts/com.foamzou.ITrafficMonitorForMac",
    "~/Library/Application Support/ITraffic",
    "~/Library/Containers/com.foamzou.ITrafficMonitorForMac",
    "~/Library/Preferences/com.foamzou.ITrafficMonitorForMac.plist",
  ]
end
