cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.4"
  sha256 arm:   "853f15ecdc6c9aebd22cc7b7c5b1f71d956e9210997780d0b4233b4174f60e40",
         intel: "ad28f7c780b4c009b08095adeca47e2c901639c58cf28ed0eaecda71d939d7ac"

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
