cask "ammonite" do
  version "1.23.2,596"
  sha256 "fcd6756bd1ee48767710df41fcbcb3f368a5f0d7982cc1c028714c9d56a9c49c"

  url "https://www.soma-zone.com/download/files/Ammonite-#{version.csv.first}.tar.xz"
  name "Ammonite"
  desc "Tag visualizer and search utility"
  homepage "https://www.soma-zone.com/Ammonite/"

  livecheck do
    url "https://www.soma-zone.com/Ammonite/a/appcast.xml"
    strategy :sparkle
  end

  app "Ammonite.app"

  zap trash: [
    "~/Library/Logs/Ammonite",
    "~/Library/Preferences/com.soma-zone.Ammonite.plist",
  ]
end
