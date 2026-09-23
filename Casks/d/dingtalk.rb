cask "dingtalk" do
  version "9.0.1,58780930"
  sha256 "d94b2388e8c1246fb0d19400cf992cc2f1d8fc6898ba4467d9f4695faf2def0a"

  url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version.csv.first}-Installer_#{version.csv.second}_universal.dmg"
  name "DingTalk"
  name "钉钉"
  desc "Teamwork app by Alibaba Group"
  homepage "https://www.dingtalk.com/"

  livecheck do
    url "https://www.dingtalk.com/mac/d/"
    regex(/DingTalk[._-]v?(\d+(?:\.\d+)+)[._-]installer[._-](\d+)[._-]universal\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on :macos

  pkg "DingTalkInstaller.pkg"

  uninstall quit:    "com.alibaba.DingTalkMac",
            pkgutil: "com.alibaba.DingTalkInstaller.app",
            delete:  "/Applications/DingTalk.app"

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
