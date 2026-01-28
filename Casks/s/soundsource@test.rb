cask "soundsource@test" do
  version "6.0.3,6,20260128,0942,6037006"
  sha256 "a216a4d0e0e0637fb3d45e396a3c49c59dbe9f5c7bcec56cfeb8539edcd517c2"

  url "https://download.rogueamoeba.com/builds/SoundSource/SoundSource_#{version.csv.fifth}_#{version.csv.third}_#{version.csv.fourth}.zip"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  # The livecheck uses a hard-coded system version number in the url that corresponds to the latest macOS version
  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=261&wantsTestReleases=true&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.csv.fifth}"
    regex(/SoundSource[._-]v?(\h+)[._-](\d+)[._-](\d+)\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next item.version if match.blank?

      "#{item.version.sub("fc", ",")},#{match[2]},#{match[3]},#{match[1]}"
    end
  end

  auto_updates true
  conflicts_with cask: "soundsource"
  depends_on macos: ">= :sequoia"

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
