cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.123.0"
  sha256 arm:   "b4c0f39d350371e4ad4a6956232a746ae23d3f174a5a79a6ed8da6dc2d3f7d83",
         intel: "68bd3d03330f251e9de2452d0bee09f8a6f95f75341ec295425fb96faabb5a68"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
