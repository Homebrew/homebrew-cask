cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.105.1"
  sha256 arm:   "46e147c4fce40d1ddd8d88e387765a92d36c32aaad66e3357b3d56c1988edfff",
         intel: "80d40d7a94a00241459a499bc2b5e9cc8d5cc043e6a16304a9379c8539fb5c6e"

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
