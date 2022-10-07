cask "josm" do
  version "18570"
  sha256 "db1b07b1a0f19bfc23882c92e6d983f2e5252eb05d777b12f092da977a57de90"

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
