cask "hyperconnect" do
  version "2.1.300"
  sha256 "22d14fceb1b7226a699928f2afcf4a74af51c4971715d095da21a82c614882e6"

  url "https://cdn.cnbj1.fds.api.mi-img.com/mijia-ios-adhoc/hyperconnect/HyperConnect-#{version}.dmg",
      verified: "mi-img.com/mijia-ios-adhoc/hyperconnect/"
  name "HyperConnect"
  name "小米互联服务"
  desc "Cross-device interconnection service for the Xiaomi ecosystem"
  homepage "https://hyperos.mi.com/continuity"

  livecheck do
    url "https://cn-device.interconnect.miui.com/package/mac/checkUpdate?version=0.0.0"
    strategy :json do |json|
      json.dig("data", "versionInfo", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "小米互联服务.app"

  uninstall quit: "com.xiaomi.hyperConnect"

  zap trash: [
    "~/Documents/XiaoMiDevicePropertyCache",
    "~/Library/Caches/com.xiaomi.hyperConnect",
    "~/Library/com.xiaomi.hyperConnect",
    "~/Library/HTTPStorages/com.xiaomi.hyperConnect",
    "~/Library/OneTrack/com.xiaomi.hyperConnect.data",
    "~/Library/Preferences/com.xiaomi.hyperConnect.plist",
    "~/Library/Saved Application State/com.xiaomi.hyperConnect.savedState",
  ]
end
