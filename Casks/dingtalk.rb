cask "dingtalk" do
  if Hardware::CPU.intel?
    version "6.5.20.12"
    sha256 "88d64c542fc0d034294dc890d6225b5c01ce6296d931bf738aa31c03bd8e77e4"
    url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  else
    version "6.5.22.6"
    sha256 "ad835a79ae3bbd683866769f7ceb6b0b813a4dc3e75651783ca840dda99a6833"
    url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/M1-Beta/DingTalk-ARM64-#{version}.dmg"
  end

  name "DingTalk"
  name "钉钉"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  livecheck do
    livecheck_url = if Hardware::CPU.intel?
      "https://www.dingtalk.com/mac/d/"
    else
      "https://www.dingtalk.com/mac/d/qd=2022mac-m1"
    end
    url livecheck_url

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
