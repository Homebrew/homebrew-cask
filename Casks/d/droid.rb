cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.33.0"
  sha256 arm:   "bf7afcbcc2f9af4dcd0c7f7417523ec4725cbaf293b1e59872467ef128d07db6",
         intel: "fcead9d2cdf8b9ad4de403db7cab15800513d4cd10981c2b3b12c105ef0102cf"

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
