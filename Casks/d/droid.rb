cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.21.2"
  sha256 arm:   "3778be5002a0f50e8aca061b5cc3e50363e95d6f384f215f229333bfaf98e000",
         intel: "fafee7940007c08bb4b4a19e7543626dd909f6df6ce6838e22a8b4a2be083913"

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
