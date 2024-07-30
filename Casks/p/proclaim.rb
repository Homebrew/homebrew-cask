cask "proclaim" do
  version "3.1.0.0092"
  sha256 "03263a343503e041755e41b223ec1d23d8b110232cc2298fada55175b9a698d1"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg",
      verified: "logoscdn.com/Proclaim/"
  name "Faithlife Proclaim"
  desc "Church presentation software"
  homepage "https://faithlife.com/products/proclaim"

  livecheck do
    url "http://downloads.proclaimonline.com/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
