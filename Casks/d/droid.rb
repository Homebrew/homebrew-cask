cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "ae552d8cdb515728f899558747207b950f4332762ea3495894d70cc680ba611d",
         intel: "d7061e43508fcf89d667174f2510cbad349868083cb433aafc5ece37e81bf5a0"

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
