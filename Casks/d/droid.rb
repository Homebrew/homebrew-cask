cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.10"
  sha256 arm:   "ad34dd88f34061506cbb4dc0abf3eb707848f4e5519fded2f9ffd359e3f586ce",
         intel: "c77ef24f89542e7dbbb4e67cc8bc3afb8042d07ae673cb6c68440b8986ad6e83"

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
