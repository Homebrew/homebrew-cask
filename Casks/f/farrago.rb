cask "farrago" do
  version "2.0.7"
  sha256 :no_check

  url "https://rogueamoeba.com/farrago/download/Farrago.zip"
  name "Farrago"
  desc "Audio playback"
  homepage "https://rogueamoeba.com/farrago/"

  # NOTE: The `system` value will need to be kept up to date with the latest
  # macOS version (e.g. 1441 for 14.4.1).
  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1441&bundleid=com.rogueamoeba.farrago&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Farrago.app"

  uninstall quit: "com.rogueamoeba.farrago"

  zap trash: [
    "~/Library/Application Support/Farrago #{version.major}",
    "~/Library/Caches/com.rogueamoeba.farrago",
    "~/Library/HTTPStorages/com.rogueamoeba.farrago",
    "~/Library/Preferences/com.rogueamoeba.farrago.plist",
    "~/Library/Saved Application State/com.rogueamoeba.farrago.savedState",
    "~/Library/WebKit/com.rogueamoeba.farrago",
  ]
end
