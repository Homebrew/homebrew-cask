cask "loopback" do
  version "2.2.8"
  sha256 :no_check

  url "https://rogueamoeba.com/loopback/download/Loopback.zip"
  name "Loopback"
  desc "Cable-free audio router"
  homepage "https://rogueamoeba.com/loopback/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.loopback&system=10141&platform=osx&arch=x86_64&version=2008000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Loopback.app"
  installer script: {
    executable: "Loopback.app/Contents/Resources/aceinstaller",
    args:       ["install", "--silent"],
    sudo:       true,
  }

  uninstall script: {
    executable: "Loopback.app/Contents/Resources/aceinstaller",
    args:       ["uninstall", "--silent"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Support/Loopback",
    "~/Library/Caches/com.rogueamoeba.Loopback",
    "~/Library/Caches/com.rogueamoeba.loopbackd",
    "~/Library/LaunchAgents/com.rogueamoeba.loopbackd.plist",
    "~/Library/Preferences/com.rogueamoeba.Loopback.plist",
    "~/Library/Preferences/com.rogueamoeba.loopbackd.plist",
    "~/Library/WebKit/com.rogueamoeba.Loopback",
  ]
end
