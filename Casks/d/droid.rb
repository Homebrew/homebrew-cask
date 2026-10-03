cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.233.0"
  sha256 arm:   "0e0bf625f7c45ade78fb5e11efcccaf4bcd00d53414e8e82b76c62969d0c1e34",
         intel: "59970f03ab45a067d5951651df5715e5c49a08096a861b571eb7449474dbbb3f"

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
