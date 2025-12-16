cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.36.5"
  sha256 arm:   "a7355d53cd8f89741820716679349835e1482e43917ea3bd16aef20d996e79fa",
         intel: "c7594d1b9794715231126e15812c06c8c1f2078792499fe2ae033b833e3c8867"

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
