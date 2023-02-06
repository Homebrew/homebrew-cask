cask "josm" do
  version "18646"
  sha256 "8a10443a5e969c8680ef1e340f61d37552036f7d01627865874b10adb340fd25"

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
