cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.209.0"
  sha256 arm:   "73945d3090be4b32370de902b5ac8b7f70f8693fb8412ddcfb5e9f51bb585e2b",
         intel: "4aa96d04a94743149efb73d35425bed3aebd6a0f595aab387f663fe97f1df434"

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
