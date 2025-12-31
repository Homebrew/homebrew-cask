cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.41.0"
  sha256 arm:   "0eeeb6446391abbc3ce686c76b686d84fdf995748574268b782ef382b343d80a",
         intel: "36a02ceaa87db76e649607acf9af69cffa7f12586cc4de3b95125c668553b180"

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
