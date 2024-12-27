cask "soundsource@test" do
  version "5.7.6,3,20241227,1027"
  sha256 "37afd464d8383fb2bb53d907a65213632a3c8e5bdd806cdecc7aee0a683deb39"

  url "https://download.rogueamoeba.com/builds/SoundSource/SoundSource_#{version.csv.first.no_dots}700#{version.csv.second}_#{version.csv.third}_#{version.csv.fourth}.zip"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  # The livecheck uses a hard-coded system version number in the url that corresponds to the latest macOS version
  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=150&wantsTestReleases=true&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.csv.first.no_dots}700#{version.csv.second}"
    regex(/SoundSource[._-]v?(?:\d+)[._-](\d+)[._-](\d+)\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      "#{item.version.sub("fc", ",")},#{match[1]},#{match[2]}"
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
