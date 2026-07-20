cask "itraffic" do
  version "0.2.0"
  sha256 "60bb8bb2ddcda91b080ce7f023fa41f5cbfd97f854d0d9bc72fa4a9f2b2465a9"

  url "https://github.com/foamzou/ITraffic-monitor-for-mac/releases/download/v#{version}/ITraffic-v#{version}.zip"
  name "itraffic"
  desc "Monitor for displaying process traffic on status bar"
  homepage "https://github.com/foamzou/ITraffic-monitor-for-mac"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "ITraffic.app"

  zap trash: [
    "~/Library/Application Scripts/com.foamzou.ITrafficMonitorForMac",
    "~/Library/Application Support/ITraffic",
    "~/Library/Containers/com.foamzou.ITrafficMonitorForMac",
    "~/Library/Preferences/com.foamzou.ITrafficMonitorForMac.plist",
  ]
end
