cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.39.0"
  sha256 arm:   "3c0ef4c4fabafac9f8b4a002d54ec3422ca7db8e55d8d82f98ef4c3c8dca8dee",
         intel: "6d41d676c698b056b89b2ea2c948e2a361a20c68b59a33fb66689b4ab63d7587"

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
