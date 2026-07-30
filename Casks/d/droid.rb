cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.183.0"
  sha256 arm:   "fd587f994d002468cbf15268f47c807fc23274f7f571fc479784245e43c36323",
         intel: "fccbadff6d9d419acde1f39a7bc8447d688949691008cc4210c29d24b1f66a77"

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
