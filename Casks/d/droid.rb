cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.162.2"
  sha256 arm:   "40c034c8fd28a2dc50263483b141990806f975fc50fa7a53d92243e8018965df",
         intel: "9b2dffd2a4d79dc1042b90ca6130c7b27a560605a194e2bb88ebd4d6ea6be9bd"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
