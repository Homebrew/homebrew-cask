cask "macupdater" do
  on_monterey :or_older do
    version "2.3.5,14289"
    sha256 "3270e99cf4bfa95edc674da548a39727976e41882f21ca000f44a78833a84be5"

    livecheck do
      url "https://www.corecode.io/macupdater/macupdater2.xml"
      strategy :sparkle
    end

    depends_on macos: ">= :mojave"
  end
  on_ventura :or_newer do
    version "3.0.4,15817"
    sha256 "1ef32a52b8f82305fc2407b9770f0e55e6ee353e0589f4868315717f6f44bf3e"

    livecheck do
      url "https://www.corecode.io/macupdater/macupdater3.xml"
      strategy :sparkle
    end

    depends_on macos: ">= :ventura"
  end

  url "https://www.corecode.io/downloads/macupdater_#{version.csv.first}.dmg"
  name "MacUpdater"
  desc "Track and update to the latest versions of installed software"
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
