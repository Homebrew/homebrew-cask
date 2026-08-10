cask "superduper" do
  version "4.0.2"
  sha256 "c78fc5c14bde5d3bd4578c80b8b6c7881ba6888488380b898d0b962d43dbf8c7"

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
