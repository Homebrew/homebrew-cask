cask "dingtalk" do
  arch arm: "arm64", intel: "x86"
  folder = on_arch_conditional arm: "M1-Beta/"
  linkid = on_arch_conditional arm: "qd=2022mac-m1"

  on_arm do
    version "7.0.52.7_31514498"
    sha256 "c33490b88665daa2e31f2e97e93e78964492e3f50715d0f3711cf3e6f48c9f6a"
  end
  on_intel do
    version "7.0.50.10_31514487"
    sha256 "155c9e0d0e5da773a1f3619d1d67b6520952ccb8633ba9f86edee49b6fbd6a47"
  end

  url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/#{folder}DingTalk_v#{version}_#{arch}.dmg"
  name "DingTalk"
  name "钉钉"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  livecheck do
    url "https://www.dingtalk.com/mac/d/#{linkid}"
    regex(/DingTalk[._-]v?(\d+(?:.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  auto_updates true

  app "DingTalk.app"

  uninstall quit: "com.alibaba.DingTalkMac"

  zap trash: [
    "~/Library/Application Support/DingTalkMac",
    "~/Library/Caches/com.alibaba.DingTalkInstaller",
    "~/Library/Caches/com.alibaba.DingTalkMac",
    "~/Library/Caches/DingTalk",
    "~/Library/Preferences/com.alibaba.DingTalk-Helper.plist",
    "~/Library/Preferences/com.alibaba.DingTalkInstaller.plist",
    "~/Library/Preferences/com.alibaba.DingTalkMac.plist",
    "~/Library/Preferences/com.dingtalk.mac.plist",
    "~/Library/Saved Application State/com.alibaba.DingTalkMac.savedState",
    "~/Library/WebKit/com.alibaba.DingTalkMac",
  ]
end
