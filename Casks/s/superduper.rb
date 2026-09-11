cask "superduper" do
  version "4.0.5"
  sha256 "727809450037deda1d81b78dd2c6b474a195d7c4179aec0fd0d9028f7f10e7cb"

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
