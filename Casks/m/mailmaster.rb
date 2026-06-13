cask "mailmaster" do
  version "5.5.6.1476"
  sha256 "95b8d8aa22eba8c1dbb497eb92cc16975b1af071e62fef4f94259e11bcf21791"

  url "https://fm.dl.126.net/mailmaster/updatemac/mailmaster-#{version}.dmg",
      verified: "fm.dl.126.net/mailmaster/updatemac/"
  name "NetEase Mail Master"
  name "网易邮箱大师"
  desc "Email client"
  homepage "https://dashi.163.com/"

  livecheck do
    url "https://appconf.mail.163.com/mailmaster/api/app/update.do",
        post_json: {
          app_ver:    version.csv.first.split(".").then do |p|
                        (p[0].to_i * 10_000_000_000) +
                          (p[1].to_i * 10_000_000) +
                          (p[2].to_i * 10_000) +
                          p[3].to_i
                      end,
          appid:      11,
          deviceInfo: {
            appId:      "11",
            appVersion: version.to_s,
            deviceId:   "x",
            osType:     "mac",
            osVersion:  "26.3.1",
          },
        }
    strategy :json do |json|
      json.dig("data", "original", "ver")
    end
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
