cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "2679c4e570a1d33bb193032705e17e6b4ff386c36eb206ab96c13230932c38f6",
         intel: "619deca2443e24ea8defd360272fa4f3ea838e1c13cdddafe84abcc02c546bb5"

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
