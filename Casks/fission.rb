cask "fission" do
  version "2.8.1"
  sha256 :no_check

  url "https://rogueamoeba.com/fission/download/Fission.zip"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  livecheck do
    url "https://rogueamoeba.com/fission/releasenotes.php"
    regex(/ra-version=["']?(\d+(?:\.\d+)+)["' >]/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Fission.app"
end
