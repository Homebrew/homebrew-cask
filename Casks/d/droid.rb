cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.11"
  sha256 arm:   "99d1c4103c04dd0a80facf0584cc8daa0436a3df07e96480b109e1fb2abb040a",
         intel: "b261c79f094f617b7988aeb4e8662a1bc21cfb006193e00ca7f8f0684e4dcaff"

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
