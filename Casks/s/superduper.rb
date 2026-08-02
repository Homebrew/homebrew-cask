cask "superduper" do
  version "4.0.0"
  sha256 "c7fdb821817869056cdc7adef1b11adc8deed01ccf2d666c0bc507239cdd8964"

  url "https://www.shirt-pocket.com/downloads/SuperDuper-#{version}.dmg"
  name "SuperDuper!"
  desc "Backup, recovery and cloning software"
  homepage "https://www.shirt-pocket.com/superduper4.php"

  livecheck do
    url "https://www.shirt-pocket.com/SuperDuper#{version.major}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SuperDuper!.app"

  uninstall launchctl: "com.shirtpocket.SuperDuper4.menu"

  zap trash: [
    "~/Library/Application Support/CrashReporter/SuperDuper!_*.plist",
    "~/Library/Application Support/SuperDuper!",
    "~/Library/Caches/com.shirtpocket.SuperDuper4",
    "~/Library/HTTPStorages/com.shirtpocket.SuperDuper4",
    "~/Library/Preferences/com.shirtpocket.SuperDuper4.menu.plist",
    "~/Library/Preferences/com.shirtpocket.SuperDuper4.plist",
    "~/Library/Preferences/com.shirtpocket.SuperDuper4.shared.plist",
  ]
end
