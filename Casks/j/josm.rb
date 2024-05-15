cask "josm" do
  version "19067"
  sha256 "94c1124925e5ea1042d8ca4b62760e4e1cb8eb77edd9b38d369a41bf7384bc04"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java21-.zip",
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
