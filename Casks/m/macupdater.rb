cask "macupdater" do
  on_monterey :or_older do
    version "2.3.16"
    sha256 "31f081d2a447de66d52330ed6090a0ed29aec9e257114ff736cffee76a8e40a0"
  end
  on_ventura :or_newer do
    version "3.3.5"
    # required as upstream package is regularly updated in-place https://github.com/Homebrew/homebrew-cask/pull/182188#issuecomment-2284199515
    sha256 :no_check

    binary "#{appdir}/MacUpdater.app/Contents/Resources/macupdater_install"
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
  depends_on macos: ">= :mojave"

  app "MacUpdater.app"
  binary "#{appdir}/MacUpdater.app/Contents/Resources/macupdater_client"

  uninstall launchctl: "com.corecode.MacUpdaterLaunchHelper",
            quit:      "com.corecode.MacUpdater"

  zap trash: [
    "~/Library/Application Scripts/com.corecode.MacUpdaterLaunchHelper",
    "~/Library/Application Support/MacUpdater*",
    "~/Library/Caches/com.corecode.MacUpdater",
    "~/Library/Containers/com.corecode.MacUpdaterLaunchHelper",
    "~/Library/Cookies/com.corecode.MacUpdater.binarycookies",
    "~/Library/Preferences/com.corecode.MacUpdater.plist",
  ]
end
