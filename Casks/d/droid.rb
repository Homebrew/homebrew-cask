cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.95.0"
  sha256 arm:   "4a31c3bc7e1dea7a09aabc1b4cdc687371f18e86fd6d1a427f6c212f81f72d03",
         intel: "55c3fbda9914e72ac433d3db58272997bf15e5cd3d45b440540a5abce9d2d4f0"

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
