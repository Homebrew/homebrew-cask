cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.9"
  sha256 arm:   "c5b2f008c09710637cc835e11eff7d0179ef4526169ec7ca459d02875b2a4a61",
         intel: "0a37253775a5c4fd4744004d7cfaca359e4e48a4115cdd33ead5567651fa25f3"

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
