cask "appcleaner" do
  if MacOS.version <= :sierra
    version "3.4"
    sha256 "0c60d929478c1c91e0bad76d3c04795665c07a05e45e33321db845429c9aefa8"
  else
    version "3.6.3,4222"
    sha256 "812bcacd845fac07e073130d3fe4c5f037815d0774a9782e0e309fced1bded1c"
  end

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version.major_minor}.zip"
  name "FreeMacSoft AppCleaner"
  desc "Application uninstaller"
  homepage "https://freemacsoft.net/appcleaner/"

  livecheck do
    url "https://freemacsoft.net/appcleaner/Updates.xml"
    strategy :sparkle
  end

  auto_updates true

  app "AppCleaner.app"

  uninstall quit:      "net.freemacsoft.AppCleaner",
            launchctl: "net.freemacsoft.AppCleaner-SmartDelete"

  zap trash: [
    "~/Library/Caches/net.freemacsoft.AppCleaner",
    "~/Library/Preferences/net.freemacsoft.AppCleaner.plist",
    "~/Library/Preferences/net.freemacsoft.AppCleaner-SmartDelete.plist",
    "~/Library/Saved Application State/net.freemacsoft.AppCleaner.savedState",
  ]
end
