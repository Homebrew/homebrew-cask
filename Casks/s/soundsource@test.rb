cask "soundsource@test" do
  version "5.7.6,10,20250206,1907,A"
  sha256 "4fcd5a7b858b9fd590a0d96dfbe0f18a5408fab1106948058e2fb6d1f2cc8bb9"

  url "https://download.rogueamoeba.com/builds/SoundSource/SoundSource_#{version.csv.first.no_dots}700#{version.csv.fifth || version.csv.second}_#{version.csv.third}_#{version.csv.fourth}.zip"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  # The livecheck uses a hard-coded system version number in the url that corresponds to the latest macOS version
  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=150&wantsTestReleases=true&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.csv.first.no_dots}700#{version.csv.fifth || version.csv.second}"
    regex(/SoundSource[._-]v?(?:\d+)([a-z]+)?[._-](\d+)[._-](\d+)\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      "#{item.version.sub("fc", ",")},#{match[2]},#{match[3]}#{"," + match[1] if match[1]}"
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
