cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.218.2"
  sha256 arm:   "e11f9f0500462f6e2ad86ff7e729ace4819a6f69a5780e658cbbe44b8725568b",
         intel: "3a6b45cc824d30b5e2460ea3dbcc6195e3af914377118c1fdb23af80ea34d4ee"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
