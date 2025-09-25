cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "472ad8cb9748bf9267f4bc86e154ecdac4619ff32763a03254065a7dd1ebcf75",
         intel: "64a890b1cb9b60622ab77da75a40f062a2f388dfda845b12ab8540803b524409"

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
