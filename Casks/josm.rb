cask "josm" do
  version "18360"
  sha256 "642c9b81a2f03df4151b6809f9db4494863b6c66547bd47c6bfd01e902bcc8af"

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
