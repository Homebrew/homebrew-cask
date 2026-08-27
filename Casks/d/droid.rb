cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.205.1"
  sha256 arm:   "a2c05c91afce0f77c2b45f9ea45f9e6d037f7048080f0878758b3db5065775e9",
         intel: "e59cb0bd28142dc30e24d80336eae6b0bc8caea95f45062039372ece22e677e4"

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
