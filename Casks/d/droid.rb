cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.122.0"
  sha256 arm:   "83d435421013f7db521a1afd1ea58c003cf7daf2bd8f6cf187f68996fd9d7855",
         intel: "11348c4991de1d0aa347dd835962b0d28c0385052b9092a05f9e0f62c5745255"

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
