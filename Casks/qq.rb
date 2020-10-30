cask "qq" do
  version "6.7.0"
  sha256 "75576b6f946b6bb3a81a3649aa66f535299d23dbc37a96d439d05eb9fb323215"

  url "https://dldir1.qq.com/qqfile/QQforMac/QQ_#{version}.dmg"
  appcast "https://im.qq.com/proxy/domain/qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/1373/config1.js"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/"

  app "QQ.app"

  uninstall quit: "com.tencent.qq"

  zap trash: [
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.ScreenCapture2",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.localserver2",
    "~/Library/Application Scripts/com.tencent.qq",
    "~/Library/Caches/com.tencent.qq",
    "~/Library/Containers/FN2V63AD2J.com.tencent.ScreenCapture2",
    "~/Library/Containers/FN2V63AD2J.com.tencent.localserver2",
    "~/Library/Containers/com.tencent.qq",
    "~/Library/Group Containers/FN2V63AD2J.com.tencent",
    "~/Library/Preferences/com.tencent.qq.plist",
    "~/Library/Saved Application State/com.tencent.qq.savedState",
    "~/Library/WebKit/com.tencent.qq",
  ]
end
