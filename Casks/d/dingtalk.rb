cask "dingtalk" do
  arch arm: "arm64", intel: "x86"
  folder = on_arch_conditional arm: "M1-Beta/"
  linkid = on_arch_conditional arm: "qd=2022mac-m1"

  on_arm do
    version "7.0.52.6_31466692"
    sha256 "6d95890cb172f814b3a728cfb88b3df49f17167e56f4002e494d71bcd8938267"
  end
  on_intel do
    version "7.0.50.8_31466681"
    sha256 "71286d0dcdba8cb069b8f82071b5a5d25b25266cde63a72fc5f2fa5bd617a4cb"
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
