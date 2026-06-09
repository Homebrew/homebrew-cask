cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.143.1"
  sha256 arm:   "b73f270e0a1d872f45cfed4b9b6d6357faa0f35acae2556508ab63a9d69a6411",
         intel: "cdc4d05cd6b12887d0906f58109af2b35f01b8084c96e98b2c51d0f0daf61a40"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
