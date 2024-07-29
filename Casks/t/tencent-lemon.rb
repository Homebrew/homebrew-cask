cask "tencent-lemon" do
  version "5.1.9.1019"
  sha256 "9a2d7525b4ad651cf39afa6d21671a4c3210275d5b46d2f68b0f76a78b3ee43f"

  url "https://github.com/Tencent/lemon-cleaner/releases/download/v#{version}/Lemon_v#{version}.dmg",
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
