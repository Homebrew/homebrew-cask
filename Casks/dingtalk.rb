cask "dingtalk" do
  if Hardware::CPU.intel?
    version "6.5.30.6"
    sha256 "80aa6787cc293720c3d62d011e42e73695d0506489560934a27ad0ab52340b4e"
    url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  else
    version "6.5.32.7"
    sha256 "fc7348f15601a794bceaebf89d58e4cbe53e692c3f158a01d4d7689da647a2f6"
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
