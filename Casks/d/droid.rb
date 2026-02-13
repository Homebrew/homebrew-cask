cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.12"
  sha256 arm:   "09a9b78008df6482f934acf795cfdccedd421127cf431f194267d2adf2cb2fd8",
         intel: "18ffc7e25ae5b2174193fd3a1ac2f89a797332895dab27e64a273fa5a9cf25f8"

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
