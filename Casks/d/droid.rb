cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.224.1"
  sha256 arm:   "69a4b0076388000045888ae68eae85043ef510b25e6863386956dcad7c5f7032",
         intel: "9406c594be2c942294c00595866709e214abbb56eb137c9d570d4cc6f5b36f8a"

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
