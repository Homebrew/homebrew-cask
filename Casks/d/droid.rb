cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.136.0"
  sha256 arm:   "f73df287e059df9e59b12151a320fe054e716a47b155e39e28e1cd751826d478",
         intel: "f9e2bdf660cf8ee2d7ee1e80f4df2ec262eb52baac0690e7543d9213e499ed7e"

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
