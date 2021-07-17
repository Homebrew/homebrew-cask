cask "josm" do
  version "18004"
  sha256 "412561f34e372bf7fb80f123a2c1a8fc3363d5def92d41707fa10c78793af1f3"

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
