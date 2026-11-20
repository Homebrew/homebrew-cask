cask "hagimimonitordirect" do
  version "1.8.1"
  sha256 "0458e59a6b120a4f71eabc5a089979af2d8ea29e9e2c42564850641ae54bdc97"

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
