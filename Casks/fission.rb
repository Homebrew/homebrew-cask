cask "fission" do
  version "2.7.0"
  sha256 :no_check

  url "https://rogueamoeba.com/fission/download/Fission.zip"
  appcast "https://rogueamoeba.com/fission/releasenotes.php"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  depends_on macos: ">= :sierra"

  app "Fission.app"
end
