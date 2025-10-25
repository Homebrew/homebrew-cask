cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.3"
  sha256 arm:   "e7bb401a22d3605ae48fe42e271ecba596f4bb83f15e588ffa0cf0f21d070a29",
         intel: "0f9e0a603586bb7a0650af57226ab1648f70c321a5178864e551a9f52004ecd9"

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
