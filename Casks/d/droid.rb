cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.35.0"
  sha256 arm:   "8c4cd101cc23833de8f44a20350b144f8b37ae90274d64d472b83eaeae100916",
         intel: "0df80e91f7800d68eb04fbc1df4d787347007beb0d24abe4b5d5a78d06af2c37"

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
