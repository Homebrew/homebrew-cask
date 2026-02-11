cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.11"
  sha256 arm:   "cc8e15b4eb6ac0bbc53908aae74909ab1acff247fe8c2fee2c73b36380ba3d2a",
         intel: "ec58c4218aafd137289e01763a7ce4c7a490085cc2dca5ba26ff79509875d0ac"

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
