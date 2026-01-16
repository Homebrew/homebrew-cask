cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.50.0"
  sha256 arm:   "d78824e4ff789697dc863606eb800a7d92bc665f0005fd9e98109dfa30d83d88",
         intel: "48a23e13dcac89aa9631d99d09f43497a917d5a1f2c6efccf613dd73aabd5009"

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
