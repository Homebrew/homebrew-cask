cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.28.1"
  sha256 arm:   "81d3a4622ba8b4087145d2bbaf50315e053ec9b80b6fb1af07d3b7be49958690",
         intel: "5facca2de9a363f62a844aa755c08211059eb7f259d7abdab1e7957f7faaf135"

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
