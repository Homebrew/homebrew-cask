cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.173.0"
  sha256 arm:   "12777afca679a612eceb0d5ad476ce1dab65ac0b77e304649f410752ac1d2a5a",
         intel: "60b236bac9bf45cc90128d09ebac791b5896fb2dd1c13f76540ead6cd6083e3d"

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
