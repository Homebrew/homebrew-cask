cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.224.0"
  sha256 arm:   "3d8d4e1575212f04343d65436fadad77b03254b7ad3a1b008ee6c5978c409185",
         intel: "b793a7be02dc4be8dc9dd2bc5339860eee4a7afeb923e946147489db6561e061"

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
