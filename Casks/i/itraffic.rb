cask "itraffic" do
  version "0.2.1"
  sha256 "b2eaf0c69f3fc8c9eacfdfbdd642c9f520be94b899f9f8a0ab7369722e93bb87"

  url "https://github.com/foamzou/ITraffic-monitor-for-mac/releases/download/v#{version}/ITraffic-v#{version}.zip"
  name "itraffic"
  desc "Monitor for displaying process traffic on status bar"
  homepage "https://github.com/foamzou/ITraffic-monitor-for-mac"

  depends_on :macos

  app "ITraffic.app"

  zap trash: [
    "~/Library/Application Scripts/com.foamzou.ITrafficMonitorForMac",
    "~/Library/Application Support/ITraffic",
    "~/Library/Containers/com.foamzou.ITrafficMonitorForMac",
    "~/Library/Preferences/com.foamzou.ITrafficMonitorForMac.plist",
  ]
end
