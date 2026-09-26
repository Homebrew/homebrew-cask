cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.228.0"
  sha256 arm:   "4a438274ce70b167c52a41f19a76d3b419d663eb96b1f28259b2c4fb32edaa3d",
         intel: "f72c6e4c3583ffba3fdad5c270121a2aa6b7dad54957f6ae0e95825e91efb33f"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
