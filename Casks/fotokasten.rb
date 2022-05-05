cask "fotokasten" do
  version "3.56.0,220223.1141"
  sha256 "8a292b9d3e48b1ec63e8880687299145f86c5c93fca82ebbcd48ea1c92a8d695"

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
