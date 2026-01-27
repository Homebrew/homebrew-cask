cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.55.2"
  sha256 arm:   "960301dc99839d66a6478ce12083105a1a60a0fa5bb9b3da2e2cab25a552dd11",
         intel: "22719f24ddc248a6842d5db762c5f97316888ebff44a8441b92297669e17cb05"

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
