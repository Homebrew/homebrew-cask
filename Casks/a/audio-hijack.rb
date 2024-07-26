cask "audio-hijack" do
  sha256 :no_check

  on_ventura :or_older do
    version "4.3.3"

    url "https://cdn.rogueamoeba.com/audiohijack/download/AudioHijack-ACE.zip"

    depends_on macos: ">= :big_sur"
  end
  on_sonoma :or_newer do
    version "4.4.3"

    url "https://cdn.rogueamoeba.com/audiohijack/download/AudioHijack.zip"

    depends_on macos: ">= :sonoma"

    # NOTE: See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=Audio+Hijack
    caveats "Audio Hijack #{version} requires macOS 14.5 or higher."
  end

  name "Audio Hijack"
  desc "Records audio from any application"
  homepage "https://rogueamoeba.com/audiohijack/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=#{MacOS.full_version.to_s.delete(".")}&bundleid=com.rogueamoeba.audiohijack&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true

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
