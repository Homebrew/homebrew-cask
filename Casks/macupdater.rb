cask "macupdater" do
  version "1.5.9"
  sha256 "c0b745f8d35c9839f31c5a53d68c936511d96ff33cca01911b79afb64818ba36"

  url "https://www.corecode.io/downloads/macupdater_#{version}.dmg"
  appcast "https://www.corecode.io/macupdater/macupdater.xml"
  name "MacUpdater"
  desc "Track the latest updates of all applications installed automatically"
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
