cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.20.0"
  sha256 arm:   "75de88eedead121c340479607a4c110887e29d03d0b286d5c242088c477986c7",
         intel: "0be6b7e9fd6ee3c60e862adc4d5d834ec52f07582df4f6c8eed64727ad1f13ab"

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
