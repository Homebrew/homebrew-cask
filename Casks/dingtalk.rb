cask "dingtalk" do
  arch arm: "arm64", intel: "x86"
  folder = on_arch_conditional arm: "M1-Beta/"
  linkid = on_arch_conditional arm: "qd=2022mac-m1"

  on_arm do
    version "7.0.42.9_30639644"
    sha256 "c078c22e54fb674ed54bd266d7dc4024eeab9099713179c7d2571ea1a719cbbc"
  end
  on_intel do
    version "7.0.40.16_30617503"
    sha256 "dbf671d67c1b9901f82c2d0059042b61eabb07256f1c12b2c6910925613c4918"
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
