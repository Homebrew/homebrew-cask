cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.86.0"
  sha256 arm:   "df74453a84484ca8572469a7fc93b03960054ecc6e397189b3ffa968ed7b3a7a",
         intel: "da6cf750a5ef5f06d6479e7969de51d513ccf517b5bb1d6e043b48947a5a6aff"

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
