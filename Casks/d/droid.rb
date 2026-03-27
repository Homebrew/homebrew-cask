cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.88.0"
  sha256 arm:   "2ce4687d63a8229a1125fb5fa9a3b74ea58abf7204d10596b1083a58be90b5a0",
         intel: "021538e431abbd148bea5f5df00bfa62974587194e4dce199b4280af762d2429"

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
