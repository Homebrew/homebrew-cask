cask "fotokasten" do
  version "3.61.0,220518.0954"
  sha256 "97e76cd2c59ec8928860238f75d14e2aaa28e30e300da4aaede8ef25daea8c7b"

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
