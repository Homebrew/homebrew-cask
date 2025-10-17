cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.21.1"
  sha256 arm:   "268922d8255d5cf0f73cd1e44ebca1f5dfbd62296ace21e64b2c0ee3f7821953",
         intel: "139f5f7867011d3fd913e90cff4070e8943cd810453b8efb33de1331d3bb2e08"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "droid"

  # No zap stanza required
end
