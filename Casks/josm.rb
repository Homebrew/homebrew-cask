cask "josm" do
  version "18721"
  sha256 "b9a8f7d8fba9c404b93daeeeb3db0879e7a9189e812258e6e357baa2707bcf14"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java17-#{version}.zip",
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
