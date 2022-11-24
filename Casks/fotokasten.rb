cask "fotokasten" do
  version "3.68.2,221019.1846"
  sha256 "c26d980d4567b9d6471ea23900fcae751efd0ca13adadbec967a11c144b887e8"

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
