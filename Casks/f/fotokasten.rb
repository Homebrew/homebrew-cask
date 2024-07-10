cask "fotokasten" do
  version "4.13.0,230824.1252"
  sha256 "ba49a1cd489c136a84bdeaee808b367e4f52dc9dd26393fc7ca7c9ebf6b817d1"

  url "https://downloads.poi.de/fotokasten/pgx-mac/de_DE/fotokasten_22153088_de_DE_#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "downloads.poi.de/fotokasten/"
  name "Fotokasten"
  desc "Create and buy photo products"
  homepage "https://www.fotokasten.de/"

  livecheck do
    url "https://downloads.poi.de/fotokasten/pgx-mac/de_DE/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Fotokasten.app"

  zap trash: [
    "~/Library/Application Support/de.designer.fotokasten.osx",
    "~/Library/Caches/de.designer.fotokasten.osx",
    "~/Library/Logs/fotokasten",
    "~/Library/Preferences/de.designer.fotokasten.osx.plist",
    "~/Library/WebKit/de.designer.fotokasten.osx",
  ]

  caveats do
    requires_rosetta
  end
end
