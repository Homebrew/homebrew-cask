cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.226.2"
  sha256 arm:   "cb929cc21957cb2cfd45fe2f7eac67dc18c95119b5a26e42efbc0ea21648b141",
         intel: "3de00d157796a9551c84401c0cbe81996a25a0fd676c6b38eaa84eb8aeee4c5d"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
