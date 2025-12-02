cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "2d63898b250f739395dc9496631567849e529ffcf9729b2ecee18898cf82317e",
         intel: "2daeeb025442d74b7bdf1ffbc475db3413e2fdb8536f59577b0f252506a15954"

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
