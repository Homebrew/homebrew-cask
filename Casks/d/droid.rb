cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "38bfe680516057f0b9f95b0152a2eaca178d80a9c226caf07c918ee156a423da",
         intel: "d6346e07f563ed55d6f962e2d35d641e9cfdd5e2451f49a3f90382a5f8f919bf"

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
