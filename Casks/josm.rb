cask "josm" do
  version "17702"
  sha256 "f3da34654b4eb88f3e2f0d27c38b5c60e993731234ce8ad6f4a2a0dae1652764"

  url "https://github.com/openstreetmap/josm/releases/download/#{version}-tested/JOSM-macOS-java16.zip",
      verified: "github.com/openstreetmap/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/(\d+(?:\.\d+)*)(?:[._-]tested)?/JOSM-macOS-java\d+\.zip}i)
  end

  app "JOSM.app"

  zap trash: [
    "~/Library/Preferences/JOSM",
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
  ]
end
