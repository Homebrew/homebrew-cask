cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.67.1"
  sha256 arm:   "20e4af8f1dbb885a6ffb5db908c0cb16a8c8d20cd873e0321952e52e3282cc61",
         intel: "63cedcac075f9a2d79bcff697021027766cc88d31b27cb08cf14de653ad44727"

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
