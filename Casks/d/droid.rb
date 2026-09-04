cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.212.0"
  sha256 arm:   "07084b89fb54ad17197237bc50cb6ebf878fd2b602fd5159565269fa023ad9e0",
         intel: "0ee68a4a03fcd17ee3017b18f67bbca13c83cdd9b032180a67fbf78c93047310"

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
