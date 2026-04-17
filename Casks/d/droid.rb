cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.103.0"
  sha256 arm:   "b1d6f0c5376c2673511e921311c6b7cdeae775b38e818b74921930a8ab165c11",
         intel: "0a043a5ea3ca0d398585199fc3a84a03a777c82bac176989760bee03e1b1edbd"

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
