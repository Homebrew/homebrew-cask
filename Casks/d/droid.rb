cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.159.1"
  sha256 arm:   "2deeb80965f1883596b69c14d6c38e45fd5c7b81933e04607292ce23944ddd0f",
         intel: "a21bbdde40937e5a4508f8624dea696f7bf0b52edab9f63eba4a8044d4b11f11"

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
