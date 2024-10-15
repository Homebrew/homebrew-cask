cask "tencent-lemon" do
  version "5.1.10"
  sha256 "a5d743f6766140e844d70ce9f56364ab0c1f365bbb087583113db4fb27674496"

  url "https://github.com/Tencent/lemon-cleaner/releases/download/v#{version}/Lemon_#{version}.dmg",
      verified: "github.com/Tencent/lemon-cleaner/"
  name "Tencent Lemon Cleaner"
  desc "Cleanup and system status tool"
  homepage "https://lemon.qq.com/"

  auto_updates true

  app "Tencent Lemon.app"

  uninstall delete: [
    "/Library/Logs/Lemon",
    "/Library/Preferences/LemonDaemon_packet.dat",
  ]

  zap trash: [
    "~/Library/Caches/com.tencent.Lemon",
    "~/Library/Caches/com.tencent.LemonMonitor",
    "~/Library/Logs/LemonMonitor.log",
    "~/Library/Logs/Tencent Lemon.log",
    "~/Library/Preferences/com.tencent.LemonUpdate.plist",
    "~/Library/Preferences/LemonMonitor_packet.dat",
    "~/Library/Preferences/Tencent Lemon_packet.dat",
  ]
end
