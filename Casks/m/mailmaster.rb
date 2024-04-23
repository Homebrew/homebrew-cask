cask "mailmaster" do
  version "5.0.9.1362"
  sha256 "47b484146e1d8286654f39fc157f7886eae0fe5de3c0e6924c817a7c67b979c8"

  url "http://fm.dl.126.net/mailmaster/updatemac/mailmaster-#{version}.dmg",
      verified: "fm.dl.126.net/mailmaster/"
  name "NetEase Mail Master"
  name "网易邮箱大师"
  desc "Email client"
  homepage "https://mail.163.com/dashi/"

  livecheck do
    url "http://fm.dl.126.net/mailmaster/updatemac/update_config.json"
    strategy :json do |json|
      json["targets"].map { |target| target["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
