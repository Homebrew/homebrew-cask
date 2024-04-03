cask "audio-hijack" do
  version "4.3.3"
  sha256 :no_check

  url "https://rogueamoeba.com/audiohijack/download/AudioHijack.zip"
  name "Audio Hijack"
  desc "Records audio from any application"
  homepage "https://rogueamoeba.com/audiohijack/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.audiohijack&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

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
