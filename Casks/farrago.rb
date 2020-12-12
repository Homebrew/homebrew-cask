cask "farrago" do
  version "1.6.0"
  sha256 :no_check

  url "https://rogueamoeba.com/farrago/download/Farrago.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140"
  name "Farrago"
  homepage "https://rogueamoeba.com/farrago/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Farrago.app"
end
