cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.148.1"
  sha256 arm:   "20ffd3d4c7ca517c52aaeb135f69faba13891c2788613cd1611daaf1a708f99c",
         intel: "e06bc28f42aafa3059ecfd1d79018196b5528302c6d26d32f185f9f97a8e1b97"

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
