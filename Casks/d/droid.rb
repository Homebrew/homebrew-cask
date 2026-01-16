cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.52.0"
  sha256 arm:   "4ef7f189bd9ba4fd788a672b314b410f5635a67ade4ce7ca5a2251664153ac06",
         intel: "5b5b9ab3e69376b1a52a75d200d0215adca17378ef8a5757f67d43d504c4fced"

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
