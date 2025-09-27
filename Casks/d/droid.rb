cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "fa9a7f66498909c61db721629cedbf795450f90cbf5c34681d84739ecb62f40c",
         intel: "85d29448def0b9b0bf239df30eec9de8ce232f16db08925b56a22292e684353a"

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
