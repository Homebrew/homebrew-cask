cask "fotokasten" do
  version "3.46.0,210630.1140"
  sha256 "62959ced33e0343fd5af058f56727467bb60b62579ea1dde57930684ae8489fd"

  url "https://downloads.poi.de/fotokasten/pgx-mac/de_DE/fotokasten%20%28de_DE%29%20#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "downloads.poi.de/fotokasten/pgx-mac/de_DE/"
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
