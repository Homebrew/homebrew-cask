cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.3"
  sha256 arm:   "d5a5f35732a800f392775cb663029786934cc526a7edd186a7b0f570589a8b93",
         intel: "551f7358d5c72e4936def0fa7ad678fda4ef5494d00085d15b0aab22c434b88b"

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
