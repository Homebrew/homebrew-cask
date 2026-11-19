cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "b6aacec52239da4b86023949bb627e913093f364da26a46eba099e714edac639",
         intel: "d44769fccb2e23d547c9ca29246cd38731006c8436709ad1c628893c28c1b3ef"

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
