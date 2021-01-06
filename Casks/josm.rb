cask "josm" do
  version "17428"
  sha256 "437c685093b561149b7b2d10b0d5c94894df95938bbdf0a6a79f080f0fa90c12"

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
