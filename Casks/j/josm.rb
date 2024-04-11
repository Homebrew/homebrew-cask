cask "josm" do
  arch arm: "aarch64", intel: "x64"
  app_suffix = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "19039"
  sha256 arm:   "cf822692733d6ec3e0a7482099d6906906619ffa5f022a030d285256f12b9513",
         intel: "d8eafc7d0af65cc0823b1a8254f9d1672f712ae94fa7a6601357f77f17e27a58"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java17-#{version}-#{arch}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(/\D*?(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  app "JOSM_17_#{app_suffix}.app"

  zap trash: [
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
    "~/Library/Preferences/JOSM",
    "~/Library/Saved Application State/de.openstreetmap.josm.savedState",
  ]
end
