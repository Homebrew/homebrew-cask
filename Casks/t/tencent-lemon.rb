cask "tencent-lemon" do
  version "5.1.12"
  sha256 "ac733a8616d3352aaf52e3d9ab4df039ddd152f3d0f1ea820d421a4c5a06ebfc"

  url "https://github.com/Tencent/lemon-cleaner/releases/download/v#{version}/Lemon#{version}.dmg",
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
