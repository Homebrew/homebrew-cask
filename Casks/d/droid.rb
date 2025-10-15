cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "a5a22758a4e76a552233b3dc1a192eb0bccb64ade4f1377600c1ea969dbfdfeb",
         intel: "1f62840dc73c1d9175be693718b002e121174c72a1a272413e9751d5a40dce2f"

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
