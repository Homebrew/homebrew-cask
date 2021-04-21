cask "qq" do
  version "6.7.5"
  sha256 "202f08ea0dfaee3e6530761e7c6016715ceedf99a1846400871aa99e8e5e6c27"

  url "https://dldir1.qq.com/qqfile/QQforMac/QQ_#{version}.dmg"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/"

  livecheck do
    url "https://im.qq.com/proxy/domain/qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/1373/config1.js"
    strategy :page_match
    regex(%r{/QQforMac/QQ_(\d+(?:\.\d+)*)\.dmg}i)
  end

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
