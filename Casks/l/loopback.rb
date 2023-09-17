cask "loopback" do
  version "2.3.0"
  sha256 :no_check

  url "https://rogueamoeba.com/loopback/download/Loopback.zip"
  name "Loopback"
  desc "Cable-free audio router"
  homepage "https://rogueamoeba.com/loopback/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.Loopback&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Loopback.app"

  uninstall delete: [
    "~/Library/LaunchAgents/com.rogueamoeba.loopbackd.plist",
  ], quit: [
    "com.rogueamoeba.Loopback",
    "com.rogueamoeba.loopbackd",
  ]

  zap trash: [
    "~/Library/Application Support/Loopback",
    "~/Library/Caches/com.rogueamoeba.Loopback",
    "~/Library/Caches/com.rogueamoeba.loopbackd",
    "~/Library/HTTPStorages/com.rogueamoeba.Loopback/",
    "~/Library/HTTPStorages/com.rogueamoeba.loopbackd/",
    "~/Library/Preferences/com.rogueamoeba.Loopback.plist",
    "~/Library/Preferences/com.rogueamoeba.loopbackd.plist",
    "~/Library/WebKit/com.rogueamoeba.Loopback",
  ]
end
