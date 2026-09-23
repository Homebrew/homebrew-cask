cask "buholaunchpad" do
  version "1.10.2"
  sha256 :no_check

  url "https://pub-assets1.drbuho.com/buholaunchpad/releases/buholaunchpad.dmg"
  name "BuhoLaunchpad"
  desc "Launchpad alternative"
  homepage "https://www.drbuho.com/buholaunchpad"

  livecheck do
    url "https://pub-assets1.drbuho.com/buholaunchpad/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "BuhoLaunchpad.app"

  uninstall quit: [
    "com.drbuho.BuhoLaunchpad",
    "com.drbuho.BuhoLaunchpad.Launcher",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.drbuho.BuhoLaunchpad.Launcher",
    "~/Library/Application Support/BuhoLaunchpad",
    "~/Library/Application Support/BuhoLaunchpadServer",
    "~/Library/Caches/com.drbuho.BuhoLaunchpad",
    "~/Library/Caches/SentryCrash/BuhoLaunchpadServer",
    "~/Library/Containers/com.drbuho.BuhoLaunchpad.Launcher",
    "~/Library/HTTPStorages/com.drbuho.BuhoLaunchpad",
    "~/Library/Logs/BuhoLaunchpadServer",
    "~/Library/Preferences/com.drbuho.BuhoLaunchpad.Launcher.plist",
    "~/Library/Preferences/com.drbuho.BuhoLaunchpad.plist",
  ]
end
