cask "mailmaster" do
  version "2.14.9,1276"
  sha256 :no_check

  url "http://client.dl.126.net/macmail/dashi/mailmaster.dmg",
      verified: "client.dl.126.net/macmail/dashi/"
  name "NetEase Mail Master"
  name "网易邮箱大师"
  homepage "https://mail.163.com/dashi/"

  app "MailMaster.app"

  uninstall quit: "com.netease.macmail"

  zap trash: [
    "~/Library/Application Scripts/com.netease.macmail",
    "~/Library/Containers/com.netease.macmail",
    "~/Library/Preferences/com.netease.macmail.plist",
    "~/Library/Saved Application State/com.netease.macmail.savedState",
  ]
end
