cask "josm" do
  version "17560"
  sha256 "1385ba7bd8b49ff1846d22785985ad40031a37fb33826062b298628e9afff45a"

  url "https://github.com/grischard/josm/releases/download/#{version}-tested/JOSM-macOS-java15.zip",
      verified: "github.com/grischard/josm/"
  appcast "https://github.com/grischard/josm/releases.atom"
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
