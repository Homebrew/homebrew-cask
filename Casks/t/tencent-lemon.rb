cask "tencent-lemon" do
  version "5.1.1"
  sha256 "32fab9dfb5d24ff02ae1311f53461b1d5165585fccd33a35f9f3eb9412ffa355"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/LemonV#{version.no_dots}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/qqpcmgr/"
  name "Tencent Lemon Cleaner"
  desc "Cleanup and system status tool"
  homepage "https://lemon.qq.com/"

  livecheck do
    url "https://lemon.guanjia.qq.com/latest/package"
    regex(/"latest":{"version":"(\d+(?:\.\d+)+)"/i)
  end

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
