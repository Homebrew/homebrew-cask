cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.44.1"
  sha256 arm:   "15c623f97053cf32f05188a1b27f781919abfe99e9a56d91b92e8dd3246cb428",
         intel: "a84e4060e8e94d4076f3ba059ebb1f40e7334d700216eeb938cce25f0ab8c9ac"

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
