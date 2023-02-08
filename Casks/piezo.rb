cask "piezo" do
  version "1.7.12"
  sha256 :no_check

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.Piezo&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Piezo.app"
end
