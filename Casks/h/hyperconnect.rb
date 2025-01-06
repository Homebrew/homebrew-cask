cask "hyperconnect" do
  version "1.2.0"
  sha256 "e164c24941a37ee117b00bb74de99ba83a19cad15f96780177bb3721f79d15eb"

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
