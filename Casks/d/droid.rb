cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.5"
  sha256 arm:   "6d6fe819a3825f6e2b3d5c325860d72bcd33b319e75ddfffb2dc3842f9eb1a4c",
         intel: "38019b8252379d28cc481bca087cb1af58e58b23ec2ee07fe648312a2a2fc9f5"

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
