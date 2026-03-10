cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.71.0"
  sha256 arm:   "33b85d09561d4ce3b67d485e456bd03ed671a808c5d0329e9a21a745978d0e57",
         intel: "ddcc476109c47e1396b35d33271d58220821bca2b9413567685aa2d7d05c5066"

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
