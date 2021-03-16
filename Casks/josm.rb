cask "josm" do
  version "17560"
  sha256 "7089f8bf8f63509467b2a6001472af5b5f9f5c30fc225e80ae93047ec90955da"

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
