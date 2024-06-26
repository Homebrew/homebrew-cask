cask "piezo" do
  sha256 :no_check

  on_ventura :or_older do
    version "1.8.2"

    url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  end
  on_sonoma :or_newer do
    version "1.9.2"

    url "https://rogueamoeba.com/piezo/download/Piezo-ARK.zip"
  end

  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=#{MacOS.full_version.to_s.delete(".")}&bundleid=com.rogueamoeba.Piezo&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Piezo.app"

  uninstall quit: "com.rogueamoeba.Piezo"

  zap trash: [
    "~/Library/Caches/com.rogueamoeba.Piezo",
    "~/Library/HTTPStorages/com.rogueamoeba.Piezo",
    "~/Library/Preferences/com.rogueamoeba.Piezo.plist",
    "~/Library/WebKit/com.rogueamoeba.Piezo",
  ]
end
