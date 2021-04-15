cask "mailmaster" do
  version "2.14.10,1278"
  sha256 :no_check

  url "http://client.dl.126.net/macmail/dashi/mailmaster.dmg",
      verified: "client.dl.126.net/macmail/dashi/"
  name "NetEase Mail Master"
  name "网易邮箱大师"
  homepage "https://mail.163.com/dashi/"

  livecheck do
    skip "unversioned URL"
  end

  app "MailMaster.app"

  uninstall quit: "com.netease.macmail"

  zap trash: [
    "~/Library/Application Scripts/com.netease.macmail",
    "~/Library/Containers/com.netease.macmail",
    "~/Library/Preferences/com.netease.macmail.plist",
    "~/Library/Saved Application State/com.netease.macmail.savedState",
  ]
end
