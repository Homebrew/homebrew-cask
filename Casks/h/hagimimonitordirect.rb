cask "hagimimonitordirect" do
  version "1.8.2"
  sha256 "a9ea5754d293ae467c0343af5c2b2b0310778f791b7dc3b3b330b317c01f3d39"

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
