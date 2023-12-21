cask "appcleaner" do
  on_sierra :or_older do
    version "3.4"
    sha256 "0c60d929478c1c91e0bad76d3c04795665c07a05e45e33321db845429c9aefa8"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "3.6"
    sha256 "812bcacd845fac07e073130d3fe4c5f037815d0774a9782e0e309fced1bded1c"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "3.6.8"
    sha256 "e012f729442473c20e7cce334b00182521e4b6672ea681b34931b180feb3d6be"

    livecheck do
      url "https://freemacsoft.net/appcleaner/Updates.xml"
      strategy :sparkle, &:short_version
    end
  end

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name "FreeMacSoft AppCleaner"
  desc "Application uninstaller"
  homepage "https://freemacsoft.net/appcleaner/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "AppCleaner.app"

  uninstall launchctl: "net.freemacsoft.AppCleaner-SmartDelete",
            quit:      "net.freemacsoft.AppCleaner"

  zap trash: [
    "~/Library/Caches/net.freemacsoft.AppCleaner",
    "~/Library/Preferences/net.freemacsoft.AppCleaner.plist",
    "~/Library/Preferences/net.freemacsoft.AppCleaner-SmartDelete.plist",
    "~/Library/Saved Application State/net.freemacsoft.AppCleaner.savedState",
  ]
end
