cask "fission" do
  version "2.7.0"
  sha256 "ef13db5cceaaf88a52459c21dff4c94c93692765125c9d8d5dbac6378e15f0b3"

  url "https://rogueamoeba.com/fission/download/Fission.zip"
  appcast "https://rogueamoeba.com/fission/releasenotes.php"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  depends_on macos: ">= :sierra"

  app "Fission.app"
end
