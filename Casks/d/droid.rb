cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "1d3b31500d6c2a0b7142fa0c87677273b3c2cedc8db46060916708264b169260",
         intel: "2b738137365cd96887f8457b1996ff03100fedda3bcc015272e7632b9833855d"

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
