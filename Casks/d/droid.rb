cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.7"
  sha256 arm:   "5c892b2c650d5712529ba54ef3d87d4e94dc8f516f7826e5f794f09471e58a40",
         intel: "e2feeda74e7e20af6d075b2d1c856f5dafeb8c1c6778e1d3d0bdd39f7b2dd19b"

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
