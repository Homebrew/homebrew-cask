cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.21.0"
  sha256 arm:   "bd913881af04850b6acee392a785d8afe0ce179e779ffaa5cdf564ca1eea0590",
         intel: "eadee8aada256c295a2983077966d3da29daca18cc9d8a189a44b0ac84d123a2"

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
