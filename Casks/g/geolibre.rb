cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.1"
  sha256 arm:   "b263962d3cb0c923dace64649cdd5ccfdc044dca62d2af0eb2219d5ba87f3737",
         intel: "21cafc5e69585f6eb70378735b384aa08a61e12bbe3bd3ab7732c4cf38aafe3c"

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
