cask "fission" do
  version "2.5.0"
  sha256 "5ca54aac7248592dbcf63f743bfe271bdb6b83cf5ea3e786e94bc17aa6a2991a"

  url "https://rogueamoeba.com/fission/download/Fission.zip"
  appcast "https://rogueamoeba.com/fission/releasenotes.php"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  depends_on macos: ">= :sierra"

  app "Fission.app"
end
