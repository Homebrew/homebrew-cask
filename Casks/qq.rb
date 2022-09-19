cask "qq" do
  version "6.8.3.4068"
  sha256 "78a7f3d4c9c7a799bba7f8220fa165ba5eec746fca1e53532f34db04f79b9cd8"

  url "https://dldir1.qq.com/qqfile/qq/QQNT/QQ_#{version}_exp.dmg"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/index.shtml"

  livecheck do
    url :homepage
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
