cask "soundsource" do
  version "5.8.9"
  sha256 :no_check

  url "https://cdn.rogueamoeba.com/soundsource/download/SoundSource.zip"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=999&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "soundsource@test"
  depends_on macos: ">= :big_sur"

  app "SoundSource.app"

  uninstall quit: "com.rogueamoeba.soundsource"

  zap trash: [
    "~/Library/Application Support/SoundSource",
    "~/Library/Caches/com.rogueamoeba.soundsource",
    "~/Library/HTTPStorages/com.rogueamoeba.soundsource",
    "~/Library/Preferences/com.rogueamoeba.soundsource.plist",
    "~/Library/WebKit/com.rogueamoeba.soundsource",
  ]

  caveats <<~EOS
    SoundSource #{version} requires macOS 14.5 or higher.
    Older versions of macOS will download a compatible version after opening the app.
    See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=SoundSource for more details.
  EOS
end
