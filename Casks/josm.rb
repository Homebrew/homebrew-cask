cask "josm" do
  version "18621"
  sha256 "49fe668315a3ab6e34535b54072052e8515bd13a63fd03fbc8797ec2f4c87e78"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java17-#{version}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tree/\D*?(\d+(?:\.\d+)*)[^"' >]*?["' >]}i)
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
