cask "piezo" do
  version "1.6.6"
  sha256 "6c184031ea20e46af421f908597daf45147c07daa4c702c8909e95e9af9191e4"

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Piezo.app"
end
