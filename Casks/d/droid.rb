cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.53.0"
  sha256 arm:   "d841df4e1b5b4cf3607bf2b744081171a52e6c555e0057c0afc8bdf1c61c090f",
         intel: "8d9396c513dccf51622ec1933228a2aebe1877efdfa6aee4f08435e2f6197166"

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
