cask "josm" do
  version "17428"
  sha256 "539a1fa80b0dbd7623aaa4c296b3cda58dc4cfdf851b7bd9b84dfdc0955e3518"

  url "https://github.com/openstreetmap/josm/releases/download/#{version}-tested/JOSM-macOS-java15.zip",
      verified: "github.com/openstreetmap/josm/"
  appcast "https://github.com/openstreetmap/josm/releases.atom"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  app "JOSM.app"

  zap trash: [
    "~/Library/Preferences/JOSM",
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
  ]
end
