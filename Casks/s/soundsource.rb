cask "soundsource" do
  sha256 :no_check

  on_ventura :or_older do
    version "5.6.4"

    url "https://cdn.rogueamoeba.com/soundsource/download/SoundSource-ACE.zip"

    # The ACE release supports macOS 11 to 14.4.1, so we use the highest
    # supported macOS version in the URL.
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1441&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  end
  on_sonoma :or_newer do
    version "5.8.3"

    url "https://cdn.rogueamoeba.com/soundsource/download/SoundSource.zip"

    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=999&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end

    # NOTE: See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=SoundSource
    caveats "SoundSource #{version} requires macOS 14.5 or higher."
  end

  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

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
end
