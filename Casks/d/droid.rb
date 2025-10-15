cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.12"
  sha256 arm:   "af63390c62cdc907a800f55a56832208fcfe2f46a23fd3837b33c34e60bc43c5",
         intel: "d8d537762cf5cbaee2fe7d73bc9e31903a76f47c494193c31e86ff392d82f357"

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
