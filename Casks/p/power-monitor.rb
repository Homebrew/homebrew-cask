cask "power-monitor" do
  version "1.3.4"
  sha256 "2eb052647d458d4aa5f07e3b663cda0f0df86c736b52058b7884bf2267a025e2"

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
    "~/Library/Caches/corp.sap.PowerMonitor",
    "~/Library/HTTPStorages/corp.sap.PowerMonitor",
    "~/Library/Preferences/corp.sap.PowerMonitor.plist",
    "~/Library/Saved Application State/corp.sap.PowerMonitor.savedState",
  ]
end
