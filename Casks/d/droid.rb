cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.81.0"
  sha256 arm:   "6bf38f38ade83293e3f3328acc4106af959b182e4e242e37f8763e7962a3983e",
         intel: "69893c3701621b11f57dbcf7c671d2e9161f50f9a4a701fb70b5f7edca0867d6"

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
