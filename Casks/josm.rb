cask "josm" do
  version "18191"
  sha256 "221c4c0a5c2c1b58d7282f9300b87342a30bd693c45f7ef1173d76b74a340b7d"

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
    "~/Library/Preferences/JOSM",
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
  ]
end
