cask "piezo" do
  version "1.6.9"
  sha256 "e85bd31273ee0c34f4e0cb2c6c7cfa4b3ee4a554696e9ed11229e3cec40e4163"

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Piezo.app"
end
