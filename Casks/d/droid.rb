cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.3"
  sha256 arm:   "73276dee63ad4c845ddb1e1fa4d5e284e3a6ff7bc9b0f6e779ecd5de1c2478b3",
         intel: "d28fe44c862a61e4a8377f33cdd3b6dcaa4d858cab7c77413ff3559f9c568ef2"

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
