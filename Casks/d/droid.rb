cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.239.0"
  sha256 arm:   "9da63b7428f960fc7e9fd5494c6f0586f49c186f47db068b25fe3db23057ba8a",
         intel: "8d8b8dfff4b3ce5bcc495b7737d0a4f30736fcf470e70271bc9eb9fec59b2db4"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
