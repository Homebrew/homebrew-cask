cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.18.2"
  sha256 arm:   "ee3c37f3c911ce8be97199a714a3e7741d10a0d11bb38e5eca6364c3cb5955c5",
         intel: "8c1f41bf79933272a5ba647a3ad15094a1733fc1bacbbd4fa3e58dc4321eb3b4"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "droid"

  # No zap stanza required
end
