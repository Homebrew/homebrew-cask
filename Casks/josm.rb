cask "josm" do
  version "17580"
  sha256 "c18f7b4ba47d138bde1345ce2ebeb78481180ad47773f58d3a71fd5092c9132b"

  url "https://github.com/openstreetmap/josm/releases/download/#{version}-tested/JOSM-macOS-java16.zip",
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
