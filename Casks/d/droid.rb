cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.202.0"
  sha256 arm:   "f5cde1b1faefd3b95f7f0a5e3b71fd94aa27d57b0b96b3b751b23ea4805030c6",
         intel: "8eafe5d1291b396c0646338b779ae3e725a25eb8345281fe421ec742c703c6d0"

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
