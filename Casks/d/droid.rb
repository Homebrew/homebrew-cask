cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "87309cc2ca8c332bb23c0419cd77cffdf810a2c80ba297db85c5a259fc888c93",
         intel: "d3df4769b35782a0dce5b90adbf0e132ef05804a488753770ae2f4e3a16ae13d"

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
