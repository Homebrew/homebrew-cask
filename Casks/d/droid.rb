cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.8"
  sha256 arm:   "81db8c3edd010549758514a8f860afa14151629b8834366ba21df6748f6989af",
         intel: "03d96b6034845758530da881c07ea390093e792560e8b626a6cd1fb243a337ae"

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
