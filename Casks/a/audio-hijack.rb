cask "audio-hijack" do
  sha256 :no_check

  on_ventura :or_older do
    version "4.3.3"

    url "https://rogueamoeba.com/audiohijack/download/AudioHijack.zip"

    # NOTE: The `system` value will need to be kept up to date with the latest
    # macOS Ventura version (e.g. 1366 for 13.6.6).
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1366&bundleid=com.rogueamoeba.audiohijack&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  end
  on_sonoma :or_newer do
    version "4.4.2"

    url "https://rogueamoeba.com/audiohijack/download/AudioHijack-ARK.zip"

    # NOTE: The `system` value will need to be kept up to date with the latest
    # macOS version (e.g. 1441 for 14.4.1).
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1441&bundleid=com.rogueamoeba.audiohijack&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  end

  name "Audio Hijack"
  desc "Records audio from any application"
  homepage "https://rogueamoeba.com/audiohijack/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Audio Hijack.app"

  uninstall quit: "com.rogueamoeba.audiohijack"

  zap trash: [
    "~/Library/Application Support/Audio Hijack #{version.major}",
    "~/Library/Caches/com.rogueamoeba.audiohijack/",
    "~/Library/HTTPStorages/com.rogueamoeba.audiohijack/",
    "~/Library/Preferences/com.rogueamoeba.audiohijack.plist",
    "~/Library/WebKit/com.rogueamoeba.audiohijack/",
  ]
end
