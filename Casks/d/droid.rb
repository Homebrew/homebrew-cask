cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.58.0"
  sha256 arm:   "02cb7619be56a985d0d1d6af56ce6dfec295c34bb56e144d2782148e6516143d",
         intel: "35d47f89e1f4d174b188c7d8281ed1452f5cc6bd4e798303c5bbac753cadb14b"

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
