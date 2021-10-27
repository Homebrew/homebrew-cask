cask "dingtalk" do
  version "6.3.5.6"
  sha256 "51ab21eeeecfce9b21ceed759354df6dc36f73998f1b0e9a6bd79e7180ccbe47"

  url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name "DingTalk"
  name "钉钉"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  livecheck do
    url "https://www.dingtalk.com/mac/d/"
    strategy :header_match
  end

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
