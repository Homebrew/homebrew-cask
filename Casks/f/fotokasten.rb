cask "fotokasten" do
  version "4.33.3,250210.1048"
  sha256 "bb6908fbdd44fbf14728ce028efceb91ff7db162d9b2930a0c6932f7af199158"

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
