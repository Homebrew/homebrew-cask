cask "fotokasten" do
  version "4.43.1,250711.1719"
  sha256 "b222c474572684a6f25b8526a1cdfabf84b0d0fe1e0c20a0e97f534f96c43e3d"

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
