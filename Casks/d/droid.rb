cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.1"
  sha256 arm:   "b5f860df909ed3adae9304771fe4db33dc4a88392dfc494fe4dc8f15fc96e2ba",
         intel: "145c806bddaa973be80900cb1383b6ddfae982c0402112742245da8c48b8fa0c"

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
