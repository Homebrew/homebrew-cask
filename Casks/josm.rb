cask "josm" do
  version "17560"
  sha256 "8386fd4126925efa057e40c1db3c09180aaf93e691acb876c216dc6fd83f40e8"

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
