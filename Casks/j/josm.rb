cask "josm" do
  arch arm: "aarch64", intel: "x64"
  app_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "19481"
  sha256 arm:   "45ac7b0b41caf7545e7aa083d6f2bdfd24e1822e34ed8d29d2dc0ee48b39486d",
         intel: "c72688acfb24f5ae96dc9416fb53c21a0c8c817e8644d8d9adcbd67b776d164d"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java24-#{version}-#{arch}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(/\D*?(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  app "JOSM_24_#{app_arch}.app"

  zap trash: [
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
    "~/Library/Preferences/JOSM",
    "~/Library/Saved Application State/de.openstreetmap.josm.savedState",
  ]
end
