cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.135.1"
  sha256 arm:   "43a3ed77d54e5bf6b67a0bb97bce10e596fcb300373fdd3a12ba644b7f98645b",
         intel: "0f5b7e7a4dc8411f772a0faf8464db72bc4218f9911edd613d37c79f13147fb1"

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
