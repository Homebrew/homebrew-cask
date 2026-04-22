cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.106.0"
  sha256 arm:   "b606787f7cddcf32f570b749298161ba518cd9b32ff9d84b9747e5899d0c40ef",
         intel: "655bef6e38c2f7f2ab22e0b5e27e162b4e45b8560dd3021e5f523d3f6168e1b4"

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
