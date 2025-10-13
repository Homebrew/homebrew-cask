cask "soundsource@test" do
  version "5.8.9,1,20251010,1028,5897001"
  sha256 "4afed1b769740541fa463a6bf46c74f162e7ad52334de0e788e8acea6b7c75f7"

  url "https://download.rogueamoeba.com/builds/SoundSource/SoundSource_#{version.csv.fifth}_#{version.csv.third}_#{version.csv.fourth}.zip"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  # The livecheck uses a hard-coded system version number in the url that corresponds to the latest macOS version
  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=150&wantsTestReleases=true&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.csv.fifth}"
    regex(/SoundSource[._-]v?(\h+)[._-](\d+)[._-](\d+)\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      "#{item.version.sub("fc", ",")},#{match[2]},#{match[3]},#{match[1]}"
    end
  end

  auto_updates true
  conflicts_with cask: "soundsource"
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
