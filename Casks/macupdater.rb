cask "macupdater" do
  version "1.5.8"
  sha256 "c5ff53f021c8c96eefbb8982e7c32fe33ff27edff3c575606fa72fd2968d85a0"

  url "https://www.corecode.io/downloads/macupdater_#{version}.dmg"
  appcast "https://www.corecode.io/macupdater/macupdater.xml"
  name "MacUpdater"
  homepage "https://www.corecode.io/macupdater/index.html"

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
