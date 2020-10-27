cask "dingtalk" do
  version "5.1.33.3"
  sha256 "406bd842534f149c874af8ad2f82a81dd05ef84e5386d77ed1d64708e118cd78"

  url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  appcast "https://im.dingtalk.com/manifest/appcast_en.xml"
  name "DingTalk"
  name "钉钉"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  auto_updates true

  app "DingTalk.app"

  uninstall quit: "com.alibaba.DingTalkMac"

  zap trash: [
    "~/Library/Application Support/DingTalkMac",
    "~/Library/Caches/DingTalk",
    "~/Library/Caches/com.alibaba.DingTalkInstaller",
    "~/Library/Caches/com.alibaba.DingTalkMac",
    "~/Library/Preferences/com.dingtalk.mac.plist",
    "~/Library/Preferences/com.alibaba.DingTalkMac.plist",
    "~/Library/Preferences/com.alibaba.DingTalkInstaller.plist",
    "~/Library/Preferences/com.alibaba.DingTalk-Helper.plist",
    "~/Library/Saved Application State/com.alibaba.DingTalkMac.savedState",
    "~/Library/WebKit/com.alibaba.DingTalkMac",
  ]
end
