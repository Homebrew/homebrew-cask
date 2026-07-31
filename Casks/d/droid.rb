cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.185.0"
  sha256 arm:   "264e4412107dc6b38cbc4819cd974605483a6bf664d49bcba3e0540f388f0be5",
         intel: "2833b23ca89b4a96f9181499b45cb4ab33b6dc0a949dd0998ae0c2b0d6f9f55e"

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
