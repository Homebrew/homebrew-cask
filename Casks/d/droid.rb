cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.7"
  sha256 arm:   "25435b3c0c521d2cb0af1ac6235401369573a080224204055012ecae8e192b27",
         intel: "3dc2635dc9357b8cb6f1145423d0ed2de9718bf645ab95ae240c7bb714ce55e3"

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
