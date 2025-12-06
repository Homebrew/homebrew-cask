cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.32.1"
  sha256 arm:   "94150e480a34ebf4200277de176ccb9eaac4c77efea9fbaffc4a08948d114d22",
         intel: "c20156bd243bf0728c40406d3f46ce01762116a986e7318f9d4c6bd4c0305a88"

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

  # No zap stanza required
end
