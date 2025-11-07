cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.12"
  sha256 arm:   "7b496b48551ef5ce2a7f708307964ee6dec0d07b01c114933ea05f77fd4c7e1f",
         intel: "6369b85aade6dbea44483f66a493e1be299a242074be6455b68410e5f7c61885"

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
