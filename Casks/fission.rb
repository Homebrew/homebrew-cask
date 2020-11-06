cask "fission" do
  version "2.6.1"
  sha256 "160e0f097dabf8f88fd4196a4f6870fd2c587cfecca44a11a199b23dd484b619"

  url "https://rogueamoeba.com/fission/download/Fission.zip"
  appcast "https://rogueamoeba.com/fission/releasenotes.php"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  depends_on macos: ">= :sierra"

  app "Fission.app"
end
