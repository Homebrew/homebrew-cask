cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.210.0"
  sha256 arm:   "67566cb79e0b45c2803fc8e480a2ef1663474fc535504485f775c3cd9e0d26d9",
         intel: "9f6938d83a55d9a3d2e36001907187caa575d8b1bdf9af9a94b2018e3b18f6e5"

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
