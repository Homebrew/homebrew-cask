cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "194bbb3b852f31e848c52c14c867d4b82844bd625e0382acd39ee5dea56a4535",
         intel: "2f72a78817a38634ffa437f3fb6b247928704ae08a4bb7c7860e36f1cfd8c512"

  url "https://github.com/opengeos/GeoLibre/releases/download/v#{version}/GeoLibre.Desktop_#{version}_#{arch}.dmg",
      verified: "github.com/opengeos/GeoLibre/"
  name "GeoLibre Desktop"
  desc "GIS platform"
  homepage "https://geolibre.app/"

  depends_on macos: :catalina

  app "GeoLibre Desktop.app"

  zap trash: [
    "~/Library/Application Support/org.geolibre.desktop",
    "~/Library/Caches/org.geolibre.desktop",
    "~/Library/Preferences/org.geolibre.desktop.plist",
    "~/Library/Saved Application State/org.geolibre.desktop.savedState",
    "~/Library/WebKit/org.geolibre.desktop",
  ]
end
