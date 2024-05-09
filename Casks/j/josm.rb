cask "josm" do
  version "19075"
  sha256 "739c9f197630cba6a55cc8b78fff9446949997f0e7bae38b1e7ad8dd96291280"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java22-#{version}.zip",
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
