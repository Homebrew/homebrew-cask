cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.208.2"
  sha256 arm:   "f345949a5dbc86a1a8a24bdf6ecc1f927c7ea20f6250a529c960006f279ccae0",
         intel: "15956bc4ab5f7a6747c28642384c53213ddc8c333f8718471454e5579a6b6585"

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
