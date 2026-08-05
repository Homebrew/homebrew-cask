cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.188.0"
  sha256 arm:   "3b7fc4d8d594bf970b8921d40c95a9e5995c9d70576b482d8267f3c0c8fcc626",
         intel: "3d833d63b4e5c5b5c2b029f6908d89da06f6563044acda4ba15aa94558f592b1"

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
