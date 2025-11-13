cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "28b5b0a0da483f4c2a32e05b7edb048759ba0bdd7128fcc72fe0e56a7bdccac3",
         intel: "ede4aee22243e860b890f2e730f438ea29e2ec3970c59c47eab44aa8b24afc1f"

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

  # No zap stanza required
end
