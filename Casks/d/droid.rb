cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.40.0"
  sha256 arm:   "20ef4999d5021698462163c0ba86a52498f0f78c4538a8340ac2b782e12e2529",
         intel: "132e4cdd2dfa6386a10c9fe0291c23de693fed49421d6abc7edd9b79f21659c4"

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
