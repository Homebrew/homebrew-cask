cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.68.1"
  sha256 arm:   "418bfcec8879ae669a73a1cf3666e877ff099d8d577de9eb760b7355335236ad",
         intel: "756bc481284a10fe1305612ebb3f9e2afc6c5e811e1eab6ea879ab546cb45eff"

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
