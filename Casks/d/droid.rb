cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.5"
  sha256 arm:   "e287cb16f56f3805ce40ac7ae664497792032012938cdb325a051d12f66b53ef",
         intel: "f340e12099a10b9b58b858857724c75aaa3a09606758dc467f41d6cea227cb19"

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
