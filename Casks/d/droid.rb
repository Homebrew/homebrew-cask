cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.102.0"
  sha256 arm:   "8850920d72c8175306d97ff8c33d97cbaa4318d65f419672e54f47463138b658",
         intel: "8f6686c808b488e8d64ba4db21e1dcd3425be932e3639f2c8873ef1242792f4b"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
