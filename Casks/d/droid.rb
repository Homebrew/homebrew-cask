cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.8"
  sha256 arm:   "f2e0f08b2531ba365d00995d764cbd49f6ef3b2d9660621353784f247fba23f5",
         intel: "8e78eb15efef37f2bfb183e04c3df733bdff58f66cd427fa4e0fd2ce17267687"

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
