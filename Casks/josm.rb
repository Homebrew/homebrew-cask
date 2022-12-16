cask "josm" do
  version "18583"
  sha256 "dd71284825c4a5ea998f5cb89e7b39fb4251d5220d604d6bb264387cc7e5c514"

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
