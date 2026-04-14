cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.100.0"
  sha256 arm:   "ccb3e69c5635e21d95b1300424e422068172f68e6fdd2bca8bcb192ccc5ff476",
         intel: "9f2daf41d7d4a25435c2c12caec54a5363002b4c916d2b2ff679bbd3fa3dc353"

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
