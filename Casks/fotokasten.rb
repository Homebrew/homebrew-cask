cask "fotokasten" do
  version "3.46.0"
  sha256 "62959ced33e0343fd5af058f56727467bb60b62579ea1dde57930684ae8489fd"

  url "https://cdn.fotokasten.de/installer/ftk_de/de/mac/fotokasten.de_#{version}.dmg"
  name "Fotokasten"
  desc "Create and buy photo products"
  homepage "https://www.fotokasten.de/"

  app "Fotokasten.app"

  zap trash: [
    "~/Library/Application Support/de.designer.fotokasten.osx",
    "~/Library/Caches/de.designer.fotokasten.osx",
    "~/Library/Logs/fotokasten",
    "~/Library/Preferences/de.designer.fotokasten.osx.plist",
    "~/Library/WebKit/de.designer.fotokasten.osx",
  ]
end
