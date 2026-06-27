cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "ecb920721c0e5b2018b6a7ec3e59fc658b738cb10eb243e4c1e2ba5b436a2824",
         intel: "d472683fef8026deebf7b0ecd24f53c5c487f3342aef85e59b14a4756fd59d50"

  url "https://github.com/opengeos/GeoLibre/releases/download/v#{version}/GeoLibre.Desktop_#{version}_#{arch}.dmg",
      verified: "github.com/opengeos/GeoLibre/"
  name "GeoLibre Desktop"
  desc "GIS platform"
  homepage "https://geolibre.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
