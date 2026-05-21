cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.131.0"
  sha256 arm:   "455f9cb5dd89348e78a0ae13dd2d1bde14cd950ac01b7cd8653c64b3b0a5b370",
         intel: "357281982c12e645fca452d0d7b2a68abcae8bb52a143f196370b89e12403107"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
