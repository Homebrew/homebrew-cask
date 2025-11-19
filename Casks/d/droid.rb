cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.6"
  sha256 arm:   "0f44516b0ea7c36ea8b0d22f59a1a2dc0ed1862950eff42b1e45a676e32aefa6",
         intel: "737ccede195dc55bee80d708e954085d5bf67d4ec15808a28a1996091b056906"

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
