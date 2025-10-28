cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.4"
  sha256 arm:   "1e15c5da36bb41c4fcb479c81cc76483c54d8a56b4a7c449f065b28778515303",
         intel: "9de5961c51f29a3da5038b4e339ab12025b7996f20347d73ee2b0c72aff96302"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "droid"

  # No zap stanza required
end
