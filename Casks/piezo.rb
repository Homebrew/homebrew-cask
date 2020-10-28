cask "piezo" do
  version "1.6.7"
  sha256 "286cad6ec78457cbf4797d6ada66aa1b143ae7f84c283a7c177f9b86ea802113"

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Piezo.app"
end
