cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.36.2"
  sha256 arm:   "80ca27a01339bffcc0d0f3a824a6e73c1003bc0c83a1dd70cc20f899ba72db18",
         intel: "1b21b33022042baf74ed3cd90b11b3128d26349af6639cc0648f6b5c51db4437"

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
