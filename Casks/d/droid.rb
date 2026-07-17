cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.174.0"
  sha256 arm:   "957a95e85714205bcc1877017d8f83f546d5aef1bbacbf9d3c77eb71713dfea4",
         intel: "021c2714a75c7e2d80fbe5df42448d361745ed14c0d562507b966c1b37b7aa51"

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
