cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "cf62a3d791594deca550da661994b008bb9c6bdafe80d2d826328c25acb6a4ef",
         intel: "2b19e9b0cc5b0f8331bf1151851d6fbb6904caf08dfce4f0ba24b8f113e6f56c"

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
