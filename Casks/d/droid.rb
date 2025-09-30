cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "8707bb1e706d393b9d2af83638bae22d71eaedae0f538501fb325a01999985f9",
         intel: "47e56173ed2ecc6909906d432fcd11662fe8dca27a9c7643ca56cbd80445750d"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "droid"

  # No zap stanza required
end
