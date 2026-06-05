cask "power-monitor" do
  version "1.3.3"
  sha256 "6d2180970c09519fe3a535cfa8ded8453b38bb71f221f564b87e236f403df51e"

  url "https://github.com/SAP/power-monitoring-tool-for-macos/releases/download/#{version}/PowerMonitor_#{version}.pkg"
  name "Power Monitor"
  desc "Reports Mac power adapter and battery status"
  homepage "https://github.com/SAP/power-monitoring-tool-for-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  pkg "PowerMonitor_#{version}.pkg"

  uninstall launchctl: ["corp.sap.PowerMonitorDaemon", "Power"],
            pkgutil:   "corp.sap.PowerMonitor.pkg"

  zap trash: "~/Library/Preferences/corp.sap.PowerMonitor.plist"
end
