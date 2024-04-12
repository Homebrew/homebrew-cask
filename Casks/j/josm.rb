cask "josm" do
  arch arm: "aarch64", intel: "x64"
  app_suffix = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "19039"
  sha256 arm:   "92ff3d6635c50bca62aa2628647a2c8415f5686ee433609b2d8385559aa14384",
         intel: "6d8bdf05291fad96293e5c0f1675eef273db54aa3184a50e8365bf23fab63215"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java21-#{version}-#{arch}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(/\D*?(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  app "JOSM_21_#{app_suffix}.app"

  zap trash: [
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
    "~/Library/Preferences/JOSM",
    "~/Library/Saved Application State/de.openstreetmap.josm.savedState",
  ]
end
