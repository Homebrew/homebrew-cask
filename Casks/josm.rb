cask "josm" do
  version "18513"
  sha256 "33c655dc55d9247a9a7a03ca4278d090c60c5add815222b333c4e2b7836ab54e"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java17-#{version}.zip",
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
