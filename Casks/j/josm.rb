cask "josm" do
  arch arm: "aarch64", intel: "x64"
  app_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "19613"
  sha256 arm:   "8cc6a25d6dbfa13045c082547a2d93a9af3c2aab39e757122446d07376f9dd72",
         intel: "7a49d22abda424e3423c2124158c1575aaf0cce17335c55633406f0d096bf63e"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java25-#{version}-#{arch}.zip",
      verified: "github.com/JOSM/josm/"
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
