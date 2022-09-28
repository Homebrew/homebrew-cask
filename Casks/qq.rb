cask "qq" do
  version "6.8.5.4200"
  sha256 "d2904a9e5635fb13024b38e4cc7bdeb8fc1ff069f81324fc4d41451331c8a74a"

  url "https://dldir1.qq.com/qqfile/qq/QQNT/QQ_#{version}_exp.dmg"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/index.shtml"

  livecheck do
    url "https://im.qq.com/rainbow/ntQQDownload/"
    regex(%r{QQNT/QQ[._-]v?(\d+(?:\.\d+)+)[._-]exp\.dmg}i)
  end

  auto_updates true

  app "QQ-NT.app"

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
