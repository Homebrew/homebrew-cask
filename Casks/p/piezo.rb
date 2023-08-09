cask "piezo" do
  version "1.7.13"
  sha256 :no_check

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.Piezo&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Piezo.app"

  zap trash:  [
        "~/Library/Caches/com.rogueamoeba.Piezo",
        "~/Library/HTTPStorages/com.rogueamoeba.farrago",
        "~/Library/Preferences/com.rogueamoeba.Piezo.plist",
        "~/Library/Saved Application State/com.rogueamoeba.Piezo.savedState",
        "~/Library/WebKit/com.rogueamoeba.Piezo",
        "~/Library/WebKit/com.rogueamoeba.farrago",
      ],
      delete: [
        "/Library/LaunchDaemons/com.rogueamoeba.aceagent.plist",
        "/Library/LaunchDaemons/com.rogueamoeba.acetool.plist",
      ]
end
