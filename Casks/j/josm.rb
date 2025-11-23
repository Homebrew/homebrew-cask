cask "josm" do
  version "19439"
  sha256 "6f7f17774ab1d1c78db49e542160c99063af687481ff8ea89cf6dde8b27ab226"

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
