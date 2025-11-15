cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.2"
  sha256 arm:   "38cace28cdfd74d1e90c7feda5fe0eaf03f8250e8f5651c5e018b3b7571f0e74",
         intel: "739d15d4b97f95f05864a7b5429d76c7a133544717e2d5929dc96f97bbc19c5d"

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
