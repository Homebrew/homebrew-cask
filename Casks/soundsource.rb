cask "soundsource" do
  version "5.3.11"
  sha256 :no_check

  url "https://rogueamoeba.com/soundsource/download/SoundSource.zip"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  livecheck do
    url "https://rogueamoeba.com/soundsource/releasenotes.php"
    regex(/ra-version=["']?(\d+(?:\.\d+)+)["' >]/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "SoundSource.app"

  zap trash: [
    "~/Library/Application Support/SoundSource",
    "~/Library/Caches/com.rogueamoeba.soundsource",
    "~/Library/Preferences/com.rogueamoeba.soundsource.plist",
    "~/Library/WebKit/com.rogueamoeba.soundsource",
  ]
end
