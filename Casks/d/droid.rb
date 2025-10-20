cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.21.4"
  sha256 arm:   "0bddf54c7dcd4a0072d34c24031dca0079067730837c102fdbb69c181c651751",
         intel: "3bfcbb8d1c1622941af905879defb8f70effa3c49c0ab98aa9fa2e0d2045f808"

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
