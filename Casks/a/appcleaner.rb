cask "appcleaner" do
  version "3.6.8"
  sha256 "e012f729442473c20e7cce334b00182521e4b6672ea681b34931b180feb3d6be"

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name "FreeMacSoft AppCleaner"
  desc "Application uninstaller"
  homepage "https://freemacsoft.net/appcleaner/"

  livecheck do
    url "https://freemacsoft.net/appcleaner/Updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "AppCleaner.app"

  uninstall launchctl: "net.freemacsoft.AppCleaner-SmartDelete",
            quit:      "net.freemacsoft.AppCleaner"

  zap trash: [
    "~/Library/Caches/net.freemacsoft.AppCleaner",
    "~/Library/HTTPStorages/net.freemacsoft.AppCleaner",
    "~/Library/Preferences/net.freemacsoft.AppCleaner-SmartDelete.plist",
    "~/Library/Preferences/net.freemacsoft.AppCleaner.plist",
    "~/Library/Saved Application State/net.freemacsoft.AppCleaner.savedState",
  ]
end
