cask "fotokasten" do
  version "3.64.0,220822.0936"
  sha256 "cca4e1f3491218ea08f2b5da44a004265e7d01ae883303f9a69d54fdc4f27ab1"

  url "https://cdn.fotokasten.de/installer/ftk_de/de/mac/fotokasten.de_#{version.csv.first}.dmg"
  name "Fotokasten"
  desc "Create and buy photo products"
  homepage "https://www.fotokasten.de/"

  livecheck do
    url "https://downloads.poi.de/fotokasten/pgx-mac/de_DE/appcast.xml"
    strategy :sparkle
  end

  app "Fotokasten.app"

  zap trash: [
    "~/Library/Application Support/de.designer.fotokasten.osx",
    "~/Library/Caches/de.designer.fotokasten.osx",
    "~/Library/Logs/fotokasten",
    "~/Library/Preferences/de.designer.fotokasten.osx.plist",
    "~/Library/WebKit/de.designer.fotokasten.osx",
  ]
end
