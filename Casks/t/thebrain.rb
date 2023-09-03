cask "thebrain" do
  version "13.0.35.0"
  sha256 "7167332376da88c13b9efa44dec6ae1ffe4fc0a69b4dbee59eebca04aa0366f8"

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
