cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.96.1"
  sha256 arm:   "112ff7916761d2489ea3c78a1257b3b39384f54a02b4cb34e73d461fe3486030",
         intel: "3273a4ae16c6a0fa651adebbee91d12a49db345c9f76c9d081e4819f82064bd7"

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
