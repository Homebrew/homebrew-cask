cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.40.2"
  sha256 arm:   "bd713be70b296b13cb9346cdcf3de6fe04d7442f3a4ec826e30b84eee99ada4f",
         intel: "a37165d0788de381f1e19e9e147110963010dbe7dcfab66d485e02bc8933bfbf"

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
