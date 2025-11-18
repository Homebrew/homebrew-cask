cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.3"
  sha256 arm:   "27120e3d45b6ef303939efd8d9ebd2dfc285a151bbe2af7b386c07ca2c004078",
         intel: "7b6592e2e10707a9bfbaf098f32d5b5f49b8eb26e053f6c0f0cbfa3aea66ae15"

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
