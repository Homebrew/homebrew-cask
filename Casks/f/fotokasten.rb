cask "fotokasten" do
  version "4.49.0,251028.1453"
  sha256 "c76b6736fc6a84bb6b71c0e81415031d09095172e82b9df0df81d280bab26ec5"

  url "https://downloads.poi.de/fotokasten/pgx-mac/de_DE/fotokasten_22153088_de_DE_#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "downloads.poi.de/fotokasten/"
  name "Fotokasten"
  desc "Create and buy photo products"
  homepage "https://www.fotokasten.de/"

  livecheck do
    url "https://downloads.poi.de/fotokasten/pgx-mac/de_DE/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Fotokasten.app"

  zap trash: [
    "~/Library/Application Support/de.designer.fotokasten.osx",
    "~/Library/Caches/de.designer.fotokasten.osx",
    "~/Library/HTTPStorages/de.designer.fotokasten.osx",
    "~/Library/HTTPStorages/de.designer.fotokasten.osx.binarycookies",
    "~/Library/Logs/fotokasten",
    "~/Library/Preferences/de.designer.fotokasten.osx.plist",
    "~/Library/Saved Application State/de.designer.fotokasten.osx.savedState",
    "~/Library/WebKit/de.designer.fotokasten.osx",
  ]

  caveats do
    requires_rosetta
  end
end
