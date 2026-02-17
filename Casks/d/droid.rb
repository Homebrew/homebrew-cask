cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.16"
  sha256 arm:   "5f79ebddb15d9dea9c5a1b92b65526d50350169977cae8060c6d05cb0061b09c",
         intel: "0c68b639ed7f98cff5f7b928320e72b21a38aba7cc3eec0da9c69133b62f3895"

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
