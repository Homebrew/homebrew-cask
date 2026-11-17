cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.13.1"
  sha256 arm:   "fd2b03090080d45e034bccc71837a25d1f39e0a4ec8063bf9e4f20ab40ab0a54",
         intel: "811a11420535b5f0a958c7121347d10a04b6961374e91887f4fceaf0d9713769"

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
