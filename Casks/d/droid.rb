cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.141.0"
  sha256 arm:   "399e5c61de6b15ddb54aff059b7defd8bbc75f4661686904f0f9dd35ffe7aefb",
         intel: "5eb5953ddde2e8d12b152740cb2accf499e21191bc003fb6e464082e39613b76"

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
