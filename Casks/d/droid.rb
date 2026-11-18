cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "e3e173bb091f139c30df6df7664b67aa7fb16bca95b9d737c71b3fdcf98bf33b",
         intel: "423b6e4e55d4c804c0c5c1e8a0865d3d0fafaaf0ad389844eaf9ffe5a51d97da"

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
