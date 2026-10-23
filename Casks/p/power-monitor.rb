cask "power-monitor" do
  version "1.3.5"
  sha256 "c3d58cff20b096f54efbe28b1bed6a2f641404e98a17c1e079364b35c1fa49d4"

  url "https://github.com/SAP/power-monitoring-tool-for-macos/releases/download/#{version}/PowerMonitor_#{version}.pkg"
  name "Power Monitor"
  desc "Reports power adapter and battery status"
  homepage "https://github.com/SAP/power-monitoring-tool-for-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  pkg "PowerMonitor_#{version}.pkg"

  uninstall launchctl: ["corp.sap.PowerMonitorDaemon", "Power"],
            pkgutil:   "corp.sap.PowerMonitor.pkg"

  zap trash: [
    "/Users/Shared/Power Monitor",
    "~/Library/Caches/corp.sap.PowerMonitor",
    "~/Library/HTTPStorages/corp.sap.PowerMonitor",
    "~/Library/Preferences/corp.sap.PowerMonitor.plist",
    "~/Library/Saved Application State/corp.sap.PowerMonitor.savedState",
  ]
end
