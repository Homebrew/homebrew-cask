cask "farrago" do
  version "1.6.6"
  sha256 :no_check

  url "https://rogueamoeba.com/farrago/download/Farrago.zip"
  name "Farrago"
  desc "Audio playback"
  homepage "https://rogueamoeba.com/farrago/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.farrago&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Farrago.app"
end
