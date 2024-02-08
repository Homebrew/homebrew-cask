cask "macupdater" do
  on_monterey :or_older do
    version "2.3.12"
    sha256 "8518ec1d49fbeae5441bf3921c0f2eb6b78e6e86466d330325db7c00ed1bcc3c"

    depends_on macos: ">= :mojave"
  end
  on_ventura :or_newer do
    version "3.2.6"
    sha256 "6dbd6f5bda8a0eb56b0b47a3037233fa9fc2197cb0dfbacd62c886171b1c0cea"

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

  uninstall launchctl: "com.corecode.MacUpdaterLaunchHelper",
            quit:      "com.corecode.MacUpdater"

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
