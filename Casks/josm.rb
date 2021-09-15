cask "josm" do
  version "18193"
  sha256 "3a80d7e6d3d32eb52019f05ad757455727ae5d26a2f1024d7902d6c28b7692c9"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java16-#{version}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/(\d+(?:\.\d+)*)(?:[._-]tested)?/JOSM-macOS-java\d+-\d+\.zip}i)
  end

  app "JOSM.app"

  zap trash: [
    "~/Library/JOSM",
    "~/Library/Caches/JOSM",
    "~/Library/Preferences/JOSM",
  ]
end
