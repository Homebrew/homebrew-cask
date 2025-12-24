cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.40.1"
  sha256 arm:   "2c16b4e4c78abbe1a50a63da4378c38ebff46f7979dad520bfcef3163af3117b",
         intel: "ea1b082accce20461983ac24edf0ed47fa207305c1078b6221309c04ace8efba"

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
