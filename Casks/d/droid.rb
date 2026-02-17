cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.15"
  sha256 arm:   "3eff666ffabfddd8cb4f3f54efd564ae6d058e43c1fdf73be310e69f74be7027",
         intel: "0ff15461e1d816573f90139c793b4bbc71104a0c422d6b2e0af0cd4ce2abf735"

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
