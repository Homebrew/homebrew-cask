cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "596d88b0abe1cf20f6bf49ce0d0fe6ebfdcc47559e873d00ec6ed61bc4bcc445",
         intel: "175e5d600ca3697d4245921e89013d564bc215ffc7e346017e145665b2e32615"

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
