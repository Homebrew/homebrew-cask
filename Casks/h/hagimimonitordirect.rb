cask "hagimimonitordirect" do
  version "1.7.3"
  sha256 "60acedaeb15e33d77d4b61cb844d0e3986cdfafbdd314adb6de9eba6ca95b774"

  url "https://github.com/Acerola-1/hagimi-monitor/releases/download/v#{version}/HagimiMonitor.dmg"
  name "Hagimi Monitor"
  desc "Menu bar monitor for system performance and hardware"
  homepage "https://acerola-1.github.io/hagimi-monitor/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "HagimiMonitorDirect.app"

  zap trash: [
    "~/Library/Application Support/com.acerola.hagimi-monitor.direct",
    "~/Library/Application Support/HagimiMonitor",
    "~/Library/Caches/com.acerola.hagimi-monitor.direct",
    "~/Library/HTTPStorages/com.acerola.hagimi-monitor.direct",
    "~/Library/Preferences/com.acerola.hagimi-monitor.direct.plist",
  ]
end
