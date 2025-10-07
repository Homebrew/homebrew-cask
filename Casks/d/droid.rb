cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "8058ec4a5cb99da39ab73f9859fdfae22b60ee42b6306bcec6a30042daf1d2bd",
         intel: "7b877460328f9b755e0e2fb163237ad564053bf2c0ae57cd369d6096156fa525"

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
