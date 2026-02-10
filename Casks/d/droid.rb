cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.10"
  sha256 arm:   "07d1444fb8c486620d59e12ebe7293d6c390c02aaf8807169458b0f2d5f5a6eb",
         intel: "0428e21985f0327c688036557647c80e47dc15e834ab55bb5f0b9f1cc71df996"

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
