cask "thebrain" do
  version "13.0.27.0"
  sha256 "c5f3a0f65e409605d370b18381a4929ad02d6e02ae3936cc0a25cccbdf57b002"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name "TheBrain"
  desc "Mind mapping and personal knowledge base software"
  homepage "https://www.thebrain.com/"

  livecheck do
    url "https://salesapi.thebrain.com/?a=doDirectDownload&id=13000"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "TheBrain #{version.major}.app"
end
