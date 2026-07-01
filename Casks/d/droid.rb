cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.162.0"
  sha256 arm:   "6027f68d6d6cfa470eabf6773ff901831f10993f0a14726c54ba2d6df3fa17ac",
         intel: "761d0eccb82235015349cb1efac5a7d40da24a5b59ad63f10a36e8a9fcf9dcbd"

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
