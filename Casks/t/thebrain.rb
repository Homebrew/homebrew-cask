cask "thebrain" do
  version "13.0.34.0"
  sha256 "73e92bb998bfac2f522d19acb540dd7956f28ba8f4a6eae31edfd1b70d0ed218"

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
