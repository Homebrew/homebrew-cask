cask "piezo" do
  version "1.6.10"
  sha256 "54d5c93c2f66356b66ffcfd2fd9bb87e893d0aacb3f0c6b8d16350d967498947"

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Piezo.app"
end
