cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"
  sha256 arm:   "8ab603fe498b4f8edaece6117e70e3034f3a8ae27cae3e963c87913697627975",
         intel: "c64dfc197ba45e04b7e2871652dab9e2db8793aa28a170174bf3a3bcbda1aff9"

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
