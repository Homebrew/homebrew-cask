cask "fotokasten" do
  version "4.47.0,250912.0941"
  sha256 "e157ab1916baca1a1b491cad2867d80344e306bcca03a17f285b35f1e705026e"

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
