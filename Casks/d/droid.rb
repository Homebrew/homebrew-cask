cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.184.0"
  sha256 arm:   "031f6e0e49fe53f2fee2265f973010e64a6b172409113cf0cfa73173d62abf35",
         intel: "22776ede18bb690dc2b74cb64a24d04a38d6417985406d9d1ae24a41c3f156c9"

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
