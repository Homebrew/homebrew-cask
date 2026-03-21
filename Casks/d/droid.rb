cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.83.0"
  sha256 arm:   "c14d4b3bcdc007f7b646e5b6fd909cbb486f68e304e8adc355b8c0444aa0328d",
         intel: "488099798837b045d9590e9fc268403bd40a58f88b0d8c8294f0d6e685bc0225"

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
