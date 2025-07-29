cask "soundsource@test" do
  version "5.8.5,5,20250729,0641,5857005"
  sha256 "8c25c71c9d03db581ced00bb196f206a7422f726a94e59fda1ae917fa8da74d1"

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
  depends_on macos: ">= :sonoma"

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
