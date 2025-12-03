cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "befdee80051ab75e6b77029f0a9a4a0025dca52db3f8e2f53a91d4b6f9fa5dc1",
         intel: "234eff03863f3e94adac736ee8d9a5aab57998da5721d2f65199fac489a11ef8"

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
