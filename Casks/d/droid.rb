cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "59e7b5ae43f2be3854bbdd864710504c3e75f93c49890a8ad9f470b24e24b914",
         intel: "8b74bca19de59e1cfe8617458a8ce8b5808b15fb8060828b07b67702646ed940"

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
