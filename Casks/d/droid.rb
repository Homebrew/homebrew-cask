cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.216.0"
  sha256 arm:   "87f74fb1bc49c9142799b32380711f1f2d17395bcc09da211835424fc4df4429",
         intel: "9efb2cd646426647b3a62b236539488d5129728a159ab7fba107251b105a82dc"

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
