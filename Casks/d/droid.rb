cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.157.2"
  sha256 arm:   "732dfe00872487857bf023d43b140c50c034615f4d2144fb1e720b5e944cc57b",
         intel: "bf4ff30ee2402f47b2456c08bac6982428fecbb82c9b541886896cc3d69a3bbf"

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
