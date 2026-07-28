cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.182.0"
  sha256 arm:   "14da84fda8a88df382dabda77ff650843ca1b1a2d041229019339c216b595988",
         intel: "df8096bdf6a6628ae18cffb98982e38801d51a26f613e75d3cdc6dd191e040f1"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
