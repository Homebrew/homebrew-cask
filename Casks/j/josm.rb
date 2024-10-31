cask "josm" do
  version "19253"
  sha256 "6dc0a5fb0fa9bec47ef105ca8ccf5b5724c0833a7ec2b7bbd6d64ca79f952530"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java21-#{version}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(/\D*?(\d+(?:\.\d+)*)/i)
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
