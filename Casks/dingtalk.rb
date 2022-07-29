cask "dingtalk" do
  if Hardware::CPU.intel?
    version "6.5.30.16"
    sha256 "7a664ef4b8940f7cee706ccbd67fe4cf537d6a7535a3cd92f1cd2fd445c5bb04"
    url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  else
    version "6.5.32.10"
    sha256 "f10fcd3cb849cb7b7d8faae73a26d0ad121fe8e768435c7587ad3d736326ac63"
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
