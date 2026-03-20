cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.82.0"
  sha256 arm:   "b37638ba20cfe9c574253912acf5507a8c8ceca04966f2f89701f8aba48e9d43",
         intel: "f488d46524d8347223b40cf3ee585011194ae71e63a642994060e5f4d6c90dc0"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
