cask "macupdater" do
  version "2.0.4,11674"
  sha256 "301f2c7d7ca46aa5b0f5d2255b13510b40a1faeab43764902db3bf137c17bffb"

  url "https://www.corecode.io/downloads/macupdater_#{version.before_comma}.dmg"
  name "MacUpdater"
  desc "Track and update to the latest versions of installed software"
  homepage "https://www.corecode.io/macupdater/index.html"

  livecheck do
    url "https://www.corecode.io/macupdater/macupdater2.xml"
    strategy :sparkle
  end

  auto_updates true

  app "MacUpdater.app"
  binary "#{appdir}/MacUpdater.app/Contents/Resources/macupdater_client"

  uninstall quit:      "com.corecode.MacUpdater",
            launchctl: "com.corecode.MacUpdaterLaunchHelper"

  zap trash: [
    "~/Library/Application Scripts/com.corecode.MacUpdaterLaunchHelper",
    "~/Library/Application Support/MacUpdater",
    "~/Library/Application Support/MacUpdaterInstallHelper",
    "~/Library/Caches/com.corecode.MacUpdater",
    "~/Library/Containers/com.corecode.MacUpdaterLaunchHelper",
    "~/Library/Cookies/com.corecode.MacUpdater.binarycookies",
    "~/Library/Preferences/com.corecode.MacUpdater.plist",
  ]
end
