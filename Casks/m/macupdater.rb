cask "macupdater" do
  on_monterey :or_older do
    version "2.3.10"
    sha256 "782e017d1886ec11eac8c489a358a301bad2f10758408c51cada087bb45dc704"

    depends_on macos: ">= :mojave"
  end
  on_ventura :or_newer do
    version "3.2.0"
    sha256 "33e057aeee4efcad166fe1a90293148f0b1dfeb8d3726737fe9178bbeef16d63"

    depends_on macos: ">= :ventura"
  end

  url "https://www.corecode.io/downloads/macupdater_#{version}.dmg"
  name "MacUpdater"
  desc "Track and update to the latest versions of installed software"
  homepage "https://www.corecode.io/macupdater/index.html"

  livecheck do
    url "https://www.corecode.io/macupdater/macupdater#{version.major}.xml"
    strategy :sparkle, &:short_version
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
