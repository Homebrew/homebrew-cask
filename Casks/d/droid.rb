cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.130.0"
  sha256 arm:   "f12ac1b726bcb7de989416777a67f0b67dd8dc368cfdd2c5e9fa0871e636702b",
         intel: "c20a988a9337a7ce9f9fe56f82a4b5904d8ab4dbdad673634ab1a37210ccd58c"

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
