cask "dingtalk" do
  arch arm: "arm64", intel: "x86"
  folder = on_arch_conditional arm: "M1-Beta/"
  linkid = on_arch_conditional arm: "qd=2022mac-m1"

  on_arm do
    version "7.0.32.7_30013461"
    sha256 "889a84fa093b06f6437e95a66cb08ca55235eafd0fc46091f0640f12aec9d028"
  end
  on_intel do
    version "7.0.30.14_30013449"
    sha256 "704cabeaaebac6fac084f500c33036956ed1b9a83e1a422368a1653953a42cb8"
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
