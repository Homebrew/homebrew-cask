cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.25.2"
  sha256 arm:   "f63db218795e7bebb8a329e29c62f22581033f3f9ad398ed903f355df8bd40a4",
         intel: "e4e5227fb298cfed18915728d2e61a6f6d5ae50e8e4e2307ddbb2811b92a1098"

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
