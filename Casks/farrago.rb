cask "farrago" do
  version "1.5.2"
  sha256 "92d610a2e74d5b5ed6597f877b727a17561c6774f5f8d132a982f2468bc11b1c"

  url "https://rogueamoeba.com/farrago/download/Farrago.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140"
  name "Farrago"
  homepage "https://rogueamoeba.com/farrago/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Farrago.app"
end
