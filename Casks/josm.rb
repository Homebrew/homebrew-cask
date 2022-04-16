cask "josm" do
  version "18427"
  sha256 "733dce4f4dd2b6f272f5760188fc71fa7cf7e8ed1c83e5eb2ffb9ce76fc6ff57"

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
