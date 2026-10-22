cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.247.0"
  sha256 arm:   "852ae6cd6ee6651bb916c030a5eb02b651e1e814db9dab1a0cfa77e63a8aa462",
         intel: "47ac6c44e9874cddc51e44766a876ea2d3b7f54c62138aaf315197e443b80e76"

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
