cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "6aab3aae2f75ba8d558f96693cbb873f9dc8937b92d50c2cafd92aa063466228",
         intel: "3372f6597de8a180d2e358d09f4318cb5aa3dda2d4a815f49d8e073a86f92b55"

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
