cask "fission" do
  version "2.8.4"
  sha256 :no_check

  url "https://rogueamoeba.com/fission/download/Fission.zip"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.fission&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Fission.app"
end
