cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "878b106f63c73cfafe08cdc86b8eeab9388b645c29feab3a7f0c88c487204fd7",
         intel: "2c39a3f0ea0845da78d59a97002a784b3e0c0e1fb50cf6c1fe66a4446e93a5d9"

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

  # No zap stanza required
end
