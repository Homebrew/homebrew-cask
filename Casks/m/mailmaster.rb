cask "mailmaster" do
  version "5.7.4.1548"
  sha256 "83b5301311fff1e4335d5cf66d2f98072f960d9fdf9ce57c885f03013eb86ef5"

  url "https://res.126.net/dl/client/macmail/dashi/mail#{version.major}.dmg",
      user_agent: :fake
  name "NetEase Mail Master"
  name "网易邮箱大师"
  desc "Email client"
  homepage "https://dashi.163.com/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      item = items["com.netease.macmail"]
      next if item.blank?

      "#{item.short_version}.#{item.version}"
    end
  end

  auto_updates true
  depends_on :macos

  app "MailMaster.app"

  uninstall quit: "com.netease.macmail"

  zap trash: [
    "~/Library/Application Scripts/com.netease.macmail",
    "~/Library/Application Scripts/com.netease.macmail-launcher",
    "~/Library/Application Scripts/group.com.netease.macmail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.netease.macmail-launcher.sfl*",
    "~/Library/Containers/com.netease.macmail",
    "~/Library/Containers/com.netease.macmail-launcher",
    "~/Library/Group Containers/group.com.netease.macmail",
    "~/Library/Preferences/com.netease.macmail.plist",
    "~/Library/Saved Application State/com.netease.macmail.savedState",
  ]
end
