cask "dingtalk" do
  arch arm: "qd=2022mac-m1"

  on_intel do
    version "6.5.40.24"
    sha256 "c297d8679dd84e570816ddb591bfd47750c1b4220d5decb12f7e22ff1a1a5be0"
    url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  end
  on_arm do
    version "6.5.42.5"
    sha256 "158d6cf71c8f93f20f683955c237b1178b774ca18df4c4fde4876194f0f857c6"
    url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/M1-Beta/DingTalk-ARM64-#{version}.dmg"
  end

  name "DingTalk"
  name "钉钉"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  livecheck do
    url "https://www.dingtalk.com/mac/d/#{arch}"

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
