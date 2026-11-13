cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "2b6b467ee5a8f454704d599f67b6e3b53c3224e5a6057f414f877f748f6bbf7f",
         intel: "708bbfca2318d7300f935269b742954287345160750336bc28cd1584a2abab6e"

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
