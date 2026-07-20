cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.175.1"
  sha256 arm:   "6554aed3b27d26b862766d5d57a90204cf941c9bdc5ac52063c3be9e80c73e4c",
         intel: "d831e6cc9c0db9b8cc122c2d201ef557af3dc9581bb98a0a1d6327c255498fa7"

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
