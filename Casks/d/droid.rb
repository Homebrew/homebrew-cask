cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.45.0"
  sha256 arm:   "1a1ea051ce773b585684dcfa3fe1b6ce48012ae231b280fda83054f2ff8c0bdc",
         intel: "e0648485bfc560fc00588d7a102ccec183485c9c6793c035fb5eb2f005c6c824"

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
