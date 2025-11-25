cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.27.1"
  sha256 arm:   "efb9718c883c01139ab225d4c1af0116b77f6f928d280ea046d542311729762a",
         intel: "b569a64c1db88d449c5da1e6a6090ea147fe0ed9cbe0ac2162f077269a401a31"

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
