cask "appcleaner" do
  if MacOS.version <= :sierra
    version "3.4"
    sha256 "0c60d929478c1c91e0bad76d3c04795665c07a05e45e33321db845429c9aefa8"
  else
    version "3.6.4,4270"
    sha256 "610c22fda19d558130e742f9c1d5a40587bc182967abdb2e47b4385fdaad1501"
  end

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version.csv.first}.zip"
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
