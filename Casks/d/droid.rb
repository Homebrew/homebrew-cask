cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.76.0"
  sha256 arm:   "35f5468bfb9828f6b0a74f50308ed764ec1dac42308b4b2a8597dd312a2f827b",
         intel: "ab14c626cc38299e2c31fb74044a6bcb146542bc86ffea67fb167a7d0b3eb34c"

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
