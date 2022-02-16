cask "qq" do
  version "6.7.5.20630_EXP"
  sha256 "11264a225f52a6596b46e06ad450e02b614013600ee177089cd9d9639e9b3c7a"

  url "https://dldir1.qq.com/qqfile/QQforMac/QQ_#{version}.dmg"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/"

  livecheck do
    url "https://im.qq.com/rainbow/"
    regex(/QQ_(\d+(?:\.\d+)+([._-]EXP)?)\.dmg/i)
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
