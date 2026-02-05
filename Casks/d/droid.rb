cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.4"
  sha256 arm:   "2cd826ad48e073f0a69dc5bfd180afc41456066701267f14e2014e07a6141b76",
         intel: "9b84d8c1319fea1f94ceb09072a440694c4b7d7dedcb8ce95dddb2cb85c4cf6f"

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
