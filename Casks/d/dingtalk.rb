cask "dingtalk" do
  version "7.6.0_38270292"
  sha256 "9b891ade1d135e279a1814665ca69bf9e066c83eba5949b1f5508d4bd8a74824"

  url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/M1-Beta/DingTalk_v#{version}_universal.dmg"
  name "DingTalk"
  name "钉钉"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  livecheck do
    url "https://im.dingtalk.com/manifest/appcast_gray_release.xml"
    regex(/DingTalk[._-]v?(\d+(?:[._]\d+)+)[._-]universal\.dmg/i)
    strategy :sparkle do |item|
      item.url[regex, 1]
    end
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
