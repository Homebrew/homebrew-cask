cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "e53c435a6c4530f7963f4442a30239246be20ecbbe067a5dfc16d06ee5663fb3",
         intel: "74ba238e8ec5a3a6c8675e74c6e6f7bb07c27aa974d9da074c3ed3655a1c0c39"

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
