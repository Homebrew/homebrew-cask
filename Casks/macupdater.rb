cask "macupdater" do
  on_monterey :or_older do
    version "2.3.3,14284"
    sha256 :no_check

    url "https://www.corecode.io/downloads/macupdater_#{version.major}_latest.dmg"

    depends_on macos: ">= :mojave"
  end
  on_ventura :or_newer do
    version "3.0.2,15600"
    sha256 :no_check

    url "https://www.corecode.io/downloads/macupdater_latest.dmg"

    depends_on macos: ">= :ventura"
  end

  name "MacUpdater"
  desc "Track and update to the latest versions of installed software"
  homepage "https://www.corecode.io/macupdater/index.html"

  livecheck do
    url :url
    strategy :extract_plist
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
