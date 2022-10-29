cask "itraffic" do
  version "0.1.5"
  sha256 "923ed6170edf3f1b08d8f7a6aa2af1102305b3dd2f6eba86e34f9aa4347a8f1b"

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
