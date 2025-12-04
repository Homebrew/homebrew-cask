cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "e55f501baccc43ec64880b695c2ba924e9dfd61ea2860edd73ae0cf35420dc5d",
         intel: "8819399b70eb96c2616de7449b500cccbaa2219b9013318d30286085af27c635"

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
