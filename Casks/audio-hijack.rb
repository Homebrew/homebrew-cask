cask "audio-hijack" do
  version "3.7.3"
  sha256 "f12437b9e31be344b6a9a1e54cad0f24e1e41c0e6a4adc5cee3aec2df894abc7"

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
