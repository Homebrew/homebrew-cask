cask "mailmaster" do
  version "4.17.13,1319"
  sha256 :no_check

  url "http://client.dl.126.net/macmail/dashi/mailmaster.dmg",
      verified: "client.dl.126.net/macmail/dashi/"
  name "NetEase Mail Master"
  name "网易邮箱大师"
  desc "Email client"
  homepage "https://mail.163.com/dashi/"

  livecheck do
    url :url
    strategy :extract_plist
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
