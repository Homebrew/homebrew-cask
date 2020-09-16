cask "mia-for-gmail" do
  version "2.4.3"
  sha256 "72d5e61fcfb8e54a5dfd46c27d0f41ffb452b5a5e0789368812ba562ac0a7114"

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
