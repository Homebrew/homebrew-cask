cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.175.0"
  sha256 arm:   "91fe9349e1958edccde7daf88be7217db581b611733019262315af3d5fa3efcf",
         intel: "1be37e7e09a1ae940b72cdd0ed8238ce4877be9267327dd7f5d389d19d68455c"

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
