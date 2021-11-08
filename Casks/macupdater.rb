cask "macupdater" do
  version "2.1.0,12147"
  sha256 "72df5c6f58ab7b9007cacbd54f8ef0458884c481df1638f6fd021b44f1fe3f06"

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
