cask "piezo" do
  sha256 :no_check

  on_ventura :or_older do
    version "1.8.2"

    url "https://rogueamoeba.com/piezo/download/Piezo.zip"

    # NOTE: The `system` value will need to be kept up to date with the latest
    # macOS Ventura version (e.g. 1366 for 13.6.6).
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1366&bundleid=com.rogueamoeba.Piezo&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end

    depends_on macos: ">= :big_sur"
  end
  on_sonoma :or_newer do
    version "1.9.1"

    url "https://rogueamoeba.com/piezo/download/Piezo-ARK.zip"

    # NOTE: The `system` value will need to be kept up to date with the latest
    # macOS version (e.g. 1441 for 14.4.1).
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1441&bundleid=com.rogueamoeba.Piezo&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end

    depends_on macos: ">= :sonoma"
  end

  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  auto_updates true

  app "Piezo.app"

  uninstall quit: "com.rogueamoeba.Piezo"

  zap trash: [
    "~/Library/Caches/com.rogueamoeba.Piezo",
    "~/Library/HTTPStorages/com.rogueamoeba.Piezo",
    "~/Library/Preferences/com.rogueamoeba.Piezo.plist",
    "~/Library/WebKit/com.rogueamoeba.Piezo",
  ]
end
