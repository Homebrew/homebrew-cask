cask "dingtalk-lite" do
  version "5.1.21"
  sha256 "25f1fe4cb261f1bd597416290e285ea243cf417124c34dc24c51bb347767aaed"

  url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalkLite_v#{version}.dmg"
  name "DingTalk Lite"
  name "钉钉 Lite"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  livecheck do
    url "https://www.dingtalk.com/mac/d/qd=20170420173511985"
    regex(/DingTalkLite_v(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true

  app "DingTalk Lite.app"

  uninstall quit: "com.alibaba.DingTalkMacLite"

  zap trash: [
    "~/Library/Application Support/DingTalkMacLite",
    "~/Library/Caches/com.alibaba.DingTalkMacLite",
    "~/Library/Caches/DingTalkLite",
    "~/Library/Saved Application State/com.alibaba.DingTalkMacLite.savedState",
  ]
end
