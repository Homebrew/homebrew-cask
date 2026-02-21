cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.60.0"
  sha256 arm:   "ae59f2e8a194a467021f140f71534a3dc23e10452a640b8b9f68ffccb840ff2a",
         intel: "198f1c78a5d294ee486ee925b623204979cae2be6a0ab3f2aa661bce2d86e2ef"

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

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
