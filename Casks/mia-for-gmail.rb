cask "mia-for-gmail" do
  version "2.4.5"
  sha256 "4130b480c013862b7d61d678409d915b1b09564a1c37380cdd29db717e37eed7"

  url "https://www.miaforgmail.com/application/notifier-pro-for-gmail/MiaForGmail.dmg"
  appcast "https://www.sovapps.com/application/notifier-pro-for-gmail/notifier.xml"
  name "Mia for Gmail"
  desc "Desktop email client for Gmail"
  homepage "https://www.miaforgmail.com/"

  auto_updates true

  app "Mia for Gmail.app"

  uninstall quit:       "com.sovapps.gmailnotifier"

  zap trash: [
    "~/Library/Preferences/com.sovapps.gmailnotifier.plist",
    "~/Library/Caches/com.sovapps.gmailnotifier",
    "~/Library/Containers/com.sovapps.launchAtLoginHelper",
    "~/Library/Application Scripts/com.sovapps.gmailnotifier",
    "~/Library/Application Scripts/com.sovapps.launchAtLoginHelper",
  ]
end
