cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.220.0"
  sha256 arm:   "5600206db79798198c2e9d6e3b3e6fe09f72d5c01a992f54f71735119a6f3ac8",
         intel: "baaefaf2a68e26cc234463a56c6dcde62dfbeedd3bc45ea6507644ee5aad5a08"

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
