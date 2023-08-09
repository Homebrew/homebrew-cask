cask "mia-for-gmail" do
  version "2.7.1"
  sha256 "d7be7fab424cc5d615d6f75ad3d392be7742a3e4b58761d632976e699d46c3df"

  url "http://www.sovapps.com/application/notifier-pro-for-gmail/mia.#{version}.zip",
      verified: "sovapps.com/application/notifier-pro-for-gmail/"
  name "Mia for Gmail"
  desc "Desktop email client for Gmail"
  homepage "http://www.miaforgmail.com/"

  livecheck do
    url "http://www.sovapps.com/application/notifier-pro-for-gmail/notifier.xml"
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
