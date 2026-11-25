cask "appcleaner" do
  version "3.7"
  sha256 "3d7fa6146fb57da955dca408587fc658ac14aeb86eda7907763ae66397c9e65e"

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name "FreeMacSoft AppCleaner"
  desc "Application uninstaller"
  homepage "https://freemacsoft.net/appcleaner/"

  livecheck do
    url "https://freemacsoft.net/appcleaner/Updates.xml"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
    strategy :sparkle do |item, regex|
      item.title&.[](regex, 1)
    end
  end

  auto_updates true
  depends_on macos: :sequoia

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
