cask "audio-hijack" do
  version "3.7.7"
  sha256 "418dbca878d18ba8b8c46994dd2ddf53ab7cbc35bbe08e9de3d16145b417e981"

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
