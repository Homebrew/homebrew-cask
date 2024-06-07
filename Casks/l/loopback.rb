cask "loopback" do
  version "2.4.0"
  sha256 :no_check

  url "https://rogueamoeba.com/loopback/download/Loopback.zip"
  name "Loopback"
  desc "Cable-free audio router"
  homepage "https://rogueamoeba.com/loopback/"

  # NOTE: The `system` value will need to be kept up to date with the latest
  # macOS version (e.g. 1441 for 14.4.1).
  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=145&bundleid=com.rogueamoeba.Loopback&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Loopback.app"

  uninstall quit:   [
              "com.rogueamoeba.Loopback",
              "com.rogueamoeba.loopbackd",
            ],
            delete: "~/Library/LaunchAgents/com.rogueamoeba.loopbackd.plist"

  zap trash: [
    "~/Library/Application Support/Loopback",
    "~/Library/Caches/com.rogueamoeba.loop*",
    "~/Library/HTTPStorages/com.rogueamoeba.loop*",
    "~/Library/Preferences/com.rogueamoeba.loop*.plist",
    "~/Library/WebKit/com.rogueamoeba.Loopback",
  ]
end
