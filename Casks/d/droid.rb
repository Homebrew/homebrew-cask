cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "c8dd0da4d01cc8c08f4f441c183a22bcf713bef17e82d8ba7a77ffd7899d06bc",
         intel: "dbbf4fc99dea9545127ab14cb560009e5d1e4307aa2be7a8dfa7e121655e1f19"

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
