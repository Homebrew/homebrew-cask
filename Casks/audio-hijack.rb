cask "audio-hijack" do
  version "3.8.4"
  sha256 :no_check

  url "https://rogueamoeba.com/audiohijack/download/AudioHijack.zip"
  name "Audio Hijack"
  desc "Records audio from any application"
  homepage "https://www.rogueamoeba.com/audiohijack/"

  livecheck do
    url "https://www.rogueamoeba.com/audiohijack/releasenotes.php"
    strategy :page_match
    regex(/ra-version="(\d+(?:\.\d+)*)"/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Audio Hijack.app"

  zap trash: [
    "~/Library/Preferences/com.rogueamoeba.audiohijack#{version.major}.plist",
    "~/Library/Application Support/Audio Hijack",
    "~/Music/Audio Hijack",
  ]
end
