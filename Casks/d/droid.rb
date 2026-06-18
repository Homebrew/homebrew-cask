cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.151.0"
  sha256 arm:   "9c1ecd7ad9eecdd867c917d17b38e489a0589a9258a750c2f56e15afe8c276ef",
         intel: "866341d91c645c33f9b19fc4713547e59b5fd0d89714d10c6173b2edec307748"

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
