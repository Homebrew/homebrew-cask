cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.73.0"
  sha256 arm:   "e79c7100603ec11a28565b2e61f2e95aaab58705cd4ed7ebccbe22ec51540b2f",
         intel: "9f289a1a737112d3c2885afb9ceeeedf779f7adcb594a0e8f1e686b470ea2658"

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

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
