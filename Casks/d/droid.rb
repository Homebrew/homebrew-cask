cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.125.0"
  sha256 arm:   "478236ecf5a77de325a49834ba390bc5d776bb23ba6ee0330122da42c8cf8c39",
         intel: "0cd7e7a08a1433ce82b2e3718cda656c4c7352cd6e5fbd6d20db438e96d4bae3"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
