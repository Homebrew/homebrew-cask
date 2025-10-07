cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.18.3"
  sha256 arm:   "983f19c7b51647a5479d475e04654f1a275c58c7e3d722aa2c626c6b5f950098",
         intel: "b19cda07688fc0fc0c3fb6916eb5492c9566abfba17e7e9ed755cc119c002898"

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
