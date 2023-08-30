cask "dingtalk" do
  arch arm: "arm64", intel: "x86"
  folder = on_arch_conditional arm: "M1-Beta/"
  linkid = on_arch_conditional arm: "qd=2022mac-m1"

  on_arm do
    version "7.0.52.11_31816650"
    sha256 "dbc21d39a51b4caaad08a4ec350dca1f091f6a9e1664de06f03719fae3188e23"
  end
  on_intel do
    version "7.0.50.14_31816636"
    sha256 "8cb74ce51f105e2673d0f10814f0b6ca5ad44f531e7c2c132cdcd2c7ea6e1ccd"
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
