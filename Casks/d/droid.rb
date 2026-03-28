cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.89.0"
  sha256 arm:   "277c06c6a5ec4261ce23ec2f94abb56e4bb1067e4aa88f7909639209e0414d08",
         intel: "da1ef6fc3a51a3553b2c68d40686dca88bc26ccebc0342207ae51c697bd616f9"

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
