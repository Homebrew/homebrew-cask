cask "mia-for-gmail" do
  version "2.7.4"
  sha256 "9d0304868c8c31609d44abb68df44a8cda96dc965b4731015990578ab221c746"

  url "https://www.sovapps.com/application/notifier-pro-for-gmail/mia.#{version}.zip",
      verified: "sovapps.com/application/notifier-pro-for-gmail/"
  name "Mia for Gmail"
  desc "Desktop email client for Gmail"
  homepage "https://www.miaforgmail.com/"

  livecheck do
    url "https://www.sovapps.com/application/notifier-pro-for-gmail/notifier.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Mia for Gmail.app"

  uninstall quit: "com.sovapps.gmailnotifier"

  zap trash: [
    "~/Library/Application Scripts/com.sovapps.gmailnotifier",
    "~/Library/Application Scripts/com.sovapps.launchAtLoginHelper",
    "~/Library/Caches/com.sovapps.gmailnotifier",
    "~/Library/Containers/com.sovapps.launchAtLoginHelper",
    "~/Library/Preferences/com.sovapps.gmailnotifier.plist",
  ]
end
