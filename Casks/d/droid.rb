cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.46.0"
  sha256 arm:   "97badd856d2cd00ab1f8607705d141aa562e0c9cb85181fb9284e6a921df48de",
         intel: "c80c9b3d3e219c4ca8f4f16033241bdff7f205ef723be8bce98d58971db4c88d"

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
