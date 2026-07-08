cask "koreader" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026.03"
  sha256 on_arch_conditional(arm:   "48f582a1a32aed0d431f69c65b60467212d956513fa5846c08f3543eb4226eb6",
                             intel: "2767db0e38c5ee88b2324bb2de88693982585831ecd9b19bf90d3e3a8436d224")

  url "https://github.com/koreader/koreader/releases/download/v#{version}/koreader-v#{version}-#{arch}.AppImage",
      verified: "github.com/koreader/koreader/"
  name "KOReader"
  desc "Document viewer for e-ink devices"
  homepage "https://koreader.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :linux

  app_image "koreader-v#{version}-#{arch}.AppImage", target: "KOReader.AppImage"
end
