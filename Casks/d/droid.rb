cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.12"
  sha256 arm:   "1d94ea2eaddc7f370874efd3395217ad35fd714328c60e660520683b05e4f54b",
         intel: "dcea2b833955548e4c1f3b06f7101962f3c8a691f705804136345ec8e230dc80"

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
