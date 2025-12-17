cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.37.0"
  sha256 arm:   "894c6d3edc80abbe6393d9b6fdea52cff2187c8895e59d3b6b7528efbbcb187d",
         intel: "24b08f0e73d0c8b62215bd08b2a601de7d7cb3811c4065ad0be2639d557c0f57"

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
