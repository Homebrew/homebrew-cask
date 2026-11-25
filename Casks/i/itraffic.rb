cask "itraffic" do
  version "0.2.2"
  sha256 "fc21435a44e3e4e68d4fad70b5ca82740942bd9425f7ea7cde9c312cb4155ae2"

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
