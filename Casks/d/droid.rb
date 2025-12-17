cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.36.6"
  sha256 arm:   "2f03e48c816cd3ef11183f8939be76c4bf47612802ed1ac798af11925352f413",
         intel: "5c0e8b553b63b01b356531b42344dc386a01922bbccf50b080619b474d3be939"

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
