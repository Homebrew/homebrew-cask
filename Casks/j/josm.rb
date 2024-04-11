cask "josm" do
  version "19039"
  sha256 "c80f907fbe8c6e8ba22dd1fda35462f29b5b1bbd18668235de9040f4a8bad7fd"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java21-#{version}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(/\D*?(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  app "JOSM.app"

  zap trash: [
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
    "~/Library/Preferences/JOSM",
    "~/Library/Saved Application State/de.openstreetmap.josm.savedState",
  ]
end
