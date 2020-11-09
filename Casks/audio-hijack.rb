cask "audio-hijack" do
  version "3.7.5"
  sha256 "e94dc7e444233d9e76046bc017c12164f5a1f53d2ae227ff6a2b3da5b686c6a5"

  url "https://rogueamoeba.com/audiohijack/download/AudioHijack.zip"
  appcast "https://www.rogueamoeba.com/audiohijack/releasenotes.php"
  name "Audio Hijack"
  desc "Records audio from any application"
  homepage "https://www.rogueamoeba.com/audiohijack/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Audio Hijack.app"

  zap trash: [
    "~/Library/Preferences/com.rogueamoeba.audiohijack#{version.major}.plist",
    "~/Library/Application Support/Audio Hijack",
    "~/Music/Audio Hijack",
  ]
end
