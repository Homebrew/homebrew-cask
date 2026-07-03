cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.164.0"
  sha256 arm:   "13fd55db100e85a1136158f6dbe7f45ba5a35b5e2d25adecf120dc3f963ffc9d",
         intel: "45ab5c79b4ea778c1c6b4f589473a3a1c08c952743ded14358d2112391dda2f8"

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
