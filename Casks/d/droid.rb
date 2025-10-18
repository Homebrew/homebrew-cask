cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.21.3"
  sha256 arm:   "011538b1f7966f62ae70898b00f4a7ce82370580a7fc97162765f63985db7d01",
         intel: "42fcbfa944e7584415363f46755946b5c7cb4b693e0967e36cba44a04956cc3f"

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
