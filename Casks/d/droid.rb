cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.156.2"
  sha256 arm:   "81c699dca5064ba1b53ac3a80a5cdc0c1f383b5e29f6fce76aa602f1e9f2da8d",
         intel: "6880828dead1e3cc641090ec5dd15d7d8a3b05499034ddbd34551d63691d1da2"

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
