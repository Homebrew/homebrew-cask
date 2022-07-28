cask "qq" do
  version "6.8.1.21212_963"
  sha256 "cd79133905444327df8a8d2cf0d7fc2f36228ac4e8c9a0fc3f829f7d3c8e4911"

  url "https://dldir1.qq.com/qqfile/QQforMac/QQ_#{version}_EXP.dmg"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/"

  livecheck do
    url "https://im.qq.com/rainbow/"
    regex(/QQ[._-]v?(\d+(?:[._]\d+)+)[._-]EXP\.dmg/i)
  end

  auto_updates true

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
