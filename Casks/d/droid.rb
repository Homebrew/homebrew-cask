cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "c3d6d1b0ef0759c6626b96bded1e296586235cc818bd7bce21fb2b62bc5e858b",
         intel: "d728e383a9f816d40889bf17f4f7f8ec8dcd2d29d6cad3eccab6b955601b93d2"

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
