cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "cd0029f6e80236a99b81cc24bf86263b3c9a1df4b164088bc3937e72074a45e7",
         intel: "b175d5cb18bb9277fb123cf21b1898391cf434644731c895787802485a142efd"

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
