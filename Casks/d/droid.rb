cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.205.0"
  sha256 arm:   "6ee6f30b5d1e17696d14c3c8f9ef432d552e45459c4d395a8bb1bcb32d872600",
         intel: "ed485e5727ea9f24c5335bd442b74254dd3d58e0eb425df044b693a4f6e66475"

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
