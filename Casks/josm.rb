cask "josm" do
  version "18565"
  sha256 "61eae239442a19b74845a613ce6dff8d79cd50856c48dc4243e06a2614b56d12"

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
    "~/Library/JOSM",
    "~/Library/Caches/JOSM",
    "~/Library/Preferences/JOSM",
  ]
end
