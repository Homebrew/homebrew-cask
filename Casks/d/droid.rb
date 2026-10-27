cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.250.0"
  sha256 arm:   "33961ca3c47f9170a1547e7fa2b6c5b06e059de096d22be34c3e8b0550c456c2",
         intel: "f1b961ace10728a6c3dd571dd77ba3ee416bc336ad4ea5d7e9a87ff053dc88a5"

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
