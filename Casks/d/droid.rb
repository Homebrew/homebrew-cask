cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.194.0"
  sha256 arm:   "16427f8425952601796dda5d190f939d9224a890f58436a15e9bbc03ab4b7915",
         intel: "0b8e2312eb9de8df2b808bf9fa5a7459a24328e5ece0d28d2a825f6fa4bdbc1e"

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
