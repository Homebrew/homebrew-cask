cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "0ca82562fa50f1af81384f66fd28043db9cafdc946e9313d0825a8848a274a14",
         intel: "d22ae80ddaec02c57c80be94f469a4a9dbbed35f3b0b333c3cfc984ae02faa0f"

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
