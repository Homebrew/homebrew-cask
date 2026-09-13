cask "hagimimonitor" do
  version "1.5.7"
  sha256 "e5ad3348d1f869a0ccec6a9dae92b89c6da9e2c6081d05ede654c6796a43a8fd"

  url "https://github.com/Acerola-1/hagimi-monitor/releases/download/v#{version}/HagimiMonitor.dmg"
  name "HagimiMonitor"
  desc "Menu bar monitor for system performance and hardware"
  homepage "https://github.com/Acerola-1/hagimi-monitor"

  auto_updates true
  depends_on macos: :sequoia

  app "HagimiMonitorDirect.app"

  zap trash: [
    "~/Library/Application Support/HagimiMonitor",
    "~/Library/Application Support/com.acerola.hagimi-monitor.direct",
    "~/Library/Preferences/com.acerola.hagimi-monitor.direct.plist",
  ]
end
