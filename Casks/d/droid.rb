cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.228.1"
  sha256 arm:   "7128993952a364a82af25bfff137ae69bf659040f491539b2d4ab92d4a10d970",
         intel: "9ac500cbce893eba30a99d00d8ada3b6fe91e775f61fc108cd7baeb3cf8b635a"

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
