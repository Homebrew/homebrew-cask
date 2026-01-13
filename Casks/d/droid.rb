cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.47.0"
  sha256 arm:   "e147d9485542c5813a7424717aa942bb960fdac68b7b9ccda00f7d85691eaf4c",
         intel: "f5dca088f7c82455deefd50daa19d1518a0170cd9664ed66177691375a5b5fcc"

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
