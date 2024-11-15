cask "soundsource" do
  sha256 :no_check

  on_ventura :or_older do
    version "5.6.4"

    url "https://cdn.rogueamoeba.com/soundsource/download/SoundSource-ACE.zip"

    depends_on macos: ">= :big_sur"
  end
  on_sonoma :or_newer do
    version "5.7.4"

    url "https://cdn.rogueamoeba.com/soundsource/download/SoundSource.zip"

    depends_on macos: ">= :sonoma"

    # NOTE: See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=SoundSource
    caveats "SoundSource #{version} requires macOS 14.5 or higher."
  end

  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=#{MacOS.full_version.to_s.delete(".")}&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true

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
