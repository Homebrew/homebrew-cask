cask "macupdater" do
  version "1.5.8"
  sha256 "2a563c800d364c50823d87d29d465f2e82ee3bc4a6fa0aa69d407c8ab81e9aae"

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
