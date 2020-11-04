cask "fission" do
  version "2.6.0"
  sha256 "1dedb147b1cfdfacf18c4cdb3e7a10786498fd1e0c90c7a7ba1f85b7832c92ec"

  url "https://rogueamoeba.com/fission/download/Fission.zip"
  appcast "https://rogueamoeba.com/fission/releasenotes.php"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  depends_on macos: ">= :sierra"

  app "Fission.app"
end
