cask "piezo" do
  version "1.7.8"
  sha256 :no_check

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  livecheck do
    url "https://rogueamoeba.com/piezo/releasenotes.php"
    regex(/ra-version=["']?(\d+(?:\.\d+)+)["' >]/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Piezo.app"
end
