cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.104.0"
  sha256 arm:   "30fb48fe383971554e345e9faf6520e8468464d8ed222e35a42668e6d8309bb3",
         intel: "ec0816a1b27b95ac6190a5984d3539700d17bdfaa83fa1180681f953ca5e607e"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
