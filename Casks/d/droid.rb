cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.109.1"
  sha256 arm:   "93f27b87f4a5424a3512ebf78bfe71f8cb71fcb08768a4ed23f41681e5effa56",
         intel: "5c7363246c1581661a47abf9d8ee7f421952ef70852240600181faf46f1f61ce"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
