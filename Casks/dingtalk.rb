cask "dingtalk" do
  arch arm: "arm64", intel: "x86"
  choice = on_arch_conditional arm: "qd=2022mac-m1", intel: ""

  on_intel do
    version "7.0.10.5_28436509"
    sha256 "8311a41e392f170489a8c58aac3cd0cc555de8912f58108bc1911419ce5f7fe6"
    url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}_#{arch}.dmg"
  end
  on_arm do
    version "7.0.12.5_28488321"
    sha256 "11acb4fc794ee7349d2715681e719ee0f43e9d95658f35b7198ccb90dd59442c"
    url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/M1-Beta/DingTalk_v#{version}_#{arch}.dmg"
  end

  name "DingTalk"
  name "钉钉"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  livecheck do
    url "https://www.dingtalk.com/mac/d/#{choice}"
    strategy :header_match
    regex(/DingTalk_v([\d._]+)_#{arch}\.dmg/i)
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
