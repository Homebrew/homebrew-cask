cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.4"
  sha256 arm:   "986eb1840c08cb2d79b3edcb9688e8933fd4bddbe9477a7b8bca2c12d8baafb2",
         intel: "331165923d07c038013d0cf1523c13a96a8a9767f0579ed5c5aa1dba3f0aef97"

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
