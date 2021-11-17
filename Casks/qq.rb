cask "qq" do
  version "6.7.5.20299"
  sha256 "39086ce6bf7f57ed657e468ad165f89945606239f558cbf026806c6271e50e53"

  url "https://dldir1.qq.com/qqfile/QQforMac/QQ_#{version}.dmg"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/"

  livecheck do
    url "https://im.qq.com/proxy/domain/qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/1373/config1.js"
    strategy :page_match
    regex(%r{/QQforMac/QQ_(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "QQ.app"

  uninstall quit: "com.tencent.qq"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.qq",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.localserver2",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.ScreenCapture2",
    "~/Library/Caches/com.tencent.qq",
    "~/Library/Containers/com.tencent.qq",
    "~/Library/Containers/FN2V63AD2J.com.tencent.localserver2",
    "~/Library/Containers/FN2V63AD2J.com.tencent.ScreenCapture2",
    "~/Library/Group Containers/FN2V63AD2J.com.tencent",
    "~/Library/Preferences/com.tencent.qq.plist",
    "~/Library/Saved Application State/com.tencent.qq.savedState",
    "~/Library/WebKit/com.tencent.qq",
  ]
end
