cask "proclaim" do
  version "3.1.0.0092,311.0.92"
  sha256 "03263a343503e041755e41b223ec1d23d8b110232cc2298fada55175b9a698d1"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version.csv.first}/Proclaim.dmg",
      verified: "logoscdn.com/Proclaim/"
  name "Faithlife Proclaim"
  desc "Church presentation software"
  homepage "https://faithlife.com/products/proclaim"

  livecheck do
    url "http://downloads.proclaimonline.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
