cask "fotokasten" do
  version "4.0.3"
  sha256 "c70b33135848be6b52f550522e3b6fc7e020b584d168c6852a6d223c74943d4d"

  url "https://cdn.fotokasten.de/installer/ftk_de/de/mac/fotokasten.de_#{version}.dmg"
  name "Fotokasten"
  desc "Create and buy photo products"
  homepage "https://www.fotokasten.de/"

  livecheck do
    url "https://downloads.poi.de/fotokasten/pgx-mac/de_DE/appcast.xml"
    strategy :sparkle, &:short_version
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
