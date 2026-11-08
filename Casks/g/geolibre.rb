cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.0"
  sha256 arm:   "c4176c992d1fc89c8bef4de8bb5382ad7005e565e6da72c078ccd184be2ccadc",
         intel: "80a4514a947c0cff72ef20f8e6fd28df94ca1c0283178934215465b5c5c10879"

  url "https://github.com/opengeos/GeoLibre/releases/download/v#{version}/GeoLibre.Desktop_#{version}_#{arch}.dmg"
  name "GeoLibre Desktop"
  desc "GIS platform"
  homepage "https://geolibre.app/"

  depends_on :macos

  app "GeoLibre Desktop.app"

  zap trash: [
    "~/Library/Application Support/org.geolibre.desktop",
    "~/Library/Caches/org.geolibre.desktop",
    "~/Library/Preferences/org.geolibre.desktop.plist",
    "~/Library/Saved Application State/org.geolibre.desktop.savedState",
    "~/Library/WebKit/org.geolibre.desktop",
  ]
end
