cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.240.0"
  sha256 arm:   "e90f9feda2fb3a9a24d87099512777a596ca2e9abf3b862f3236a19945f7d5e9",
         intel: "1d2bae5887e010947585a0732a0108ecdbb095671a1e0f6df00a78bc23eae5e0"

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
