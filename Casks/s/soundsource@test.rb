cask "soundsource@test" do
  version "6.2.0"
  sha256 :no_check

  url "https://cdn.rogueamoeba.com/soundsource/download/SoundSource.zip"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  conflicts_with cask: "soundsource"
  depends_on macos: :sequoia

  app "SoundSource.app"

  uninstall quit: "com.rogueamoeba.soundsource"

  zap trash: [
    "~/Library/Application Support/SoundSource",
    "~/Library/Caches/com.rogueamoeba.soundsource",
    "~/Library/HTTPStorages/com.rogueamoeba.soundsource",
    "~/Library/Preferences/com.rogueamoeba.soundsource.plist",
    "~/Library/WebKit/com.rogueamoeba.soundsource",
  ]
end
