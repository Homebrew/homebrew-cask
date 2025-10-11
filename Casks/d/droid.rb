cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.9"
  sha256 arm:   "5446776b63b15621d489b12dbe252dc5677738dd1effb49f34641b5cb0083dd1",
         intel: "07543b3ab304a89a5958f8556d8011caa823d93607767f1f1bf4a1b68338b550"

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
