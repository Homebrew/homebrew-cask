cask "josm" do
  arch arm: "aarch64", intel: "x64"
  app_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "19678"
  sha256 arm:   "d04ad60f7890e19819eac645d154925cbb0548746d91dd3c043cacb2fa20c5bc",
         intel: "86d6c08910f0e2eb2b692521afe0acb87e2213a48d4ee878f31e9852f79d37d9"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java25-#{version}-#{arch}.zip"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(/\D*?(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  depends_on :macos

  app "JOSM_25_#{app_arch}.app", target: "JOSM.app"

  zap trash: [
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
    "~/Library/Preferences/JOSM",
    "~/Library/Saved Application State/de.openstreetmap.josm.savedState",
  ]
end
