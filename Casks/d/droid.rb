cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.55.1"
  sha256 arm:   "891a24577f51de9d6727d0a47c5a5da5a9ff4ba97b4a5f15fb0e7ea01567b132",
         intel: "1faff2dd21a68ff184c6ee9b22996e4b289c538566747e9400b1d7e0f13d4222"

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
