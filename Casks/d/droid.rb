cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.217.0"
  sha256 arm:   "602304e18733cb11f23f5b21323d87ac1e84a4d7d9f5bd6de653246acbc96bfc",
         intel: "cb4c205fd2fc886ec6a4e9140f5523f501605ea7dbc5a1946816e743aeebe870"

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
