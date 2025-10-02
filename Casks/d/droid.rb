cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "f3dd42c26b77d8f5fce3551a7230924c45e4706fa56ae87279896a178ea374ea",
         intel: "5b1637b20e836483acd3369702f6d73a5350136f940b78dc1c6066f2a43ad98a"

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
