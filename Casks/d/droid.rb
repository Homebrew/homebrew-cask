cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.8"
  sha256 arm:   "5b5b5783c04dcd4d8a9bcaa0f95ad2f90afd68e400d25bae946df7ecc8a8b18a",
         intel: "acb7125e76b5070159536c9a0e8b6d19e456e277cd95abc796d8055329f7e12b"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  # No zap stanza required
end
