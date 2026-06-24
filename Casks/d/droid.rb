cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.157.3"
  sha256 arm:   "bc613b6d98a42af151756cae133755bedf7292828c1e0724a8334591a87f8667",
         intel: "1be7f922ac1c764355ecea56dfabebdc240fb42f5375f2e4f2c1e4b12838ab14"

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
