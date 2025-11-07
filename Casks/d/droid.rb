cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.13"
  sha256 arm:   "a7236f180efbd629a602b910710b1a3f04f6f07658282f621d1169cc9fa97100",
         intel: "d780edf1866d22c6c0bc019e3d8b8c2bf85c106c88fa678ebc6c1cc14675914e"

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
