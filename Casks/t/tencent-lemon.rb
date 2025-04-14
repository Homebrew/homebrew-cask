cask "tencent-lemon" do
  version "5.1.13"
  sha256 "58658edb843854891cdb944f44b75bcc99ed3a5437de7b93fd231e8bfb27a366"

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
