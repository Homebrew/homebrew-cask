cask "farrago" do
  version "1.5.3"
  sha256 "515ec9ec94b61d9c156e7cd51dfb746a412f47708a0c689003b56b7f23407adf"

  url "https://rogueamoeba.com/farrago/download/Farrago.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140"
  name "Farrago"
  homepage "https://rogueamoeba.com/farrago/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Farrago.app"
end
