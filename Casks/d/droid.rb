cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.38.0"
  sha256 arm:   "0e181d8199be1f5de3f2d80e813b0ea3fb2d7b2c731b3de0dbc0029be5816976",
         intel: "9dae66b582b2088805260e0c76bda66a151c291561126990c37b8159a861d7cb"

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

  # No zap stanza required
end
