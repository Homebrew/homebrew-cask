cask "audio-hijack" do
  sha256 :no_check

  on_ventura :or_older do
    version "4.3.3"

    url "https://cdn.rogueamoeba.com/audiohijack/download/AudioHijack-ACE.zip"

    # The ACE release supports macOS 11 to 14.3.1, so we use the highest
    # supported macOS version in the URL.
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1431&bundleid=com.rogueamoeba.audiohijack&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  end
  on_sonoma :or_newer do
    version "4.5.1"

    url "https://cdn.rogueamoeba.com/audiohijack/download/AudioHijack.zip"

    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=999&bundleid=com.rogueamoeba.audiohijack&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end

    # NOTE: See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=Audio+Hijack
    caveats "Audio Hijack #{version} requires macOS 14.5 or higher."
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
    "~/Library/Caches/com.rogueamoeba.audiohijack",
    "~/Library/HTTPStorages/com.rogueamoeba.audiohijack",
    "~/Library/Preferences/com.rogueamoeba.audiohijack.plist",
    "~/Library/WebKit/com.rogueamoeba.audiohijack",
  ]
end
