cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "22bfb5a5f9d8fe123901e7cf513fbc8a6e9eeda702abbeb49a43dbacacd3d2d1",
         intel: "50ec54c89c19d5064b5375e77b5b1a6802bf758ba0201102809446510cfa9e6e"

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
