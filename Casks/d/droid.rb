cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "a7609c4b0c7526ecd180180d7a9e85f0e689fbc7467d39a7f5aff5229ad377b3",
         intel: "618b061d2bd34411a6af646f301b6329c402bf879c7eb573901219e1c137d685"

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
