cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.215.1"
  sha256 arm:   "b4ac137565d290e44db18d488f7f71a3af375a24b11502552139aa7ed44b87b2",
         intel: "e4a94ed29916a4ea7d2ff6d069a6b9190ba0b1013020bc839591f0c2862907ef"

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
