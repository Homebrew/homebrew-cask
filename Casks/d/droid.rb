cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.5"
  sha256 arm:   "be0e0c1c4f442eef7b34216b3149d48daa43d6091038c099b5097def5ba5a378",
         intel: "00148edb3e3fc1041855f03ddb3e86b541ce4006c9f0d495e39a4fd5cce31228"

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
