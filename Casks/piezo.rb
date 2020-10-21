cask "piezo" do
  version "1.6.6"
  sha256 "63f9a2e34d6223780e6f21572f2a5eaaca208dfd2ca3c9a81fac63b6bef30cfd"

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Piezo.app"
end
