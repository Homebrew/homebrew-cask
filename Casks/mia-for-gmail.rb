cask "mia-for-gmail" do
  version "2.4.4"
  sha256 "fcf02b8d7a63eafb074e11e342866155cbaf5f4f70e8fb18951c3ee246e27faf"

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
