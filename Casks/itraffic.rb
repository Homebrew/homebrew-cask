cask "itraffic" do
  version "0.1.3"
  sha256 "b047f02588c4ad2f527b6a073bbfac3403aebb738ab760778c24cc619f731e58"

  url "https://github.com/foamzou/ITraffic-monitor-for-mac/releases/download/v#{version}/ITraffic-v#{version}.zip"
  name "itraffic"
  desc "Monitor for displaying process traffic on status bar"
  homepage "https://github.com/foamzou/ITraffic-monitor-for-mac"

  app "ITraffic.app"

  zap trash: "~/Library/Preferences/com.foamzou.ITrafficMonitorForMac.plist"
end
