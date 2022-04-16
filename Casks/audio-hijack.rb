cask "audio-hijack" do
  version "4.0.2"
  sha256 :no_check

  url "https://rogueamoeba.com/audiohijack/download/AudioHijack.zip"
  name "Audio Hijack"
  desc "Records audio from any application"
  homepage "https://www.rogueamoeba.com/audiohijack/"

  livecheck do
    url "https://www.rogueamoeba.com/audiohijack/releasenotes.php"
    regex(/ra-version="(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Audio Hijack.app"

  zap trash: [
    "~/Library/Application Support/Audio Hijack",
    "~/Library/Preferences/com.rogueamoeba.audiohijack#{version.major}.plist",
    "~/Music/Audio Hijack",
  ]
end
