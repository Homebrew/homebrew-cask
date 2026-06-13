cask "mailmaster" do
  version "5.5.6,1476"
  sha256 :no_check

  url "https://res.126.net/dl/client/macmail/dashi/mail#{version.major}.dmg",
      verified:   "res.126.net/dl/client/macmail/dashi/",
      user_agent: :fake
  name "NetEase Mail Master"
  name "网易邮箱大师"
  desc "Email client"
  homepage "https://dashi.163.com/"

  livecheck do
    skip "Automated checks regular face 403 Forbidden errors from the upstream server"
  end

  auto_updates true
  depends_on :macos

  app "MailMaster.app"

  uninstall quit: "com.netease.macmail"

  zap trash: [
    "~/Library/Application Scripts/com.netease.macmail",
    "~/Library/Application Scripts/com.netease.macmail-launcher",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.netease.macmail-launcher.sfl*",
    "~/Library/Containers/com.netease.macmail",
    "~/Library/Containers/com.netease.macmail-launcher",
    "~/Library/Preferences/com.netease.macmail.plist",
    "~/Library/Saved Application State/com.netease.macmail.savedState",
  ]
end
