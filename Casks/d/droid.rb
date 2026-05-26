cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.133.1"
  sha256 arm:   "4fbaaeaf6d29a527c4b6be149413f73c98a26a287b4beb8f164a917d0abb736d",
         intel: "2d88c94d261499fb5da5f038b4d8c167c0b0d2e44249217e70ed4bc91cba2f3e"

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
