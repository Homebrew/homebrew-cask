cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.2"
  sha256 arm:   "1a69e9e09f1d6b0673eb7330364b5e749a10aeec2ca018787d7e4cf3d792ab72",
         intel: "d7aa275e37f5331b1f8d6384561c3f7906400569e80316d02cdfb3338cab103e"

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
