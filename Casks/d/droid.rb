cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.200.0"
  sha256 arm:   "26edeab997a0b15baceac63ab20d695e56bfd530a3cfc90bbef5a32b55941ef5",
         intel: "2e2f3a995cdff07ddabf6d1d83ea0c2a6644a6f6529344c69a093c7feec81a89"

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
