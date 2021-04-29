cask "josm" do
  version "17833"
  sha256 "3ccff0357aad1306a5868ad61ea5475ac6a21afeb4485ac75d9adbd4cc3f42a4"

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
