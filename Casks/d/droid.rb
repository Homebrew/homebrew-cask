cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.99.0"
  sha256 arm:   "2cd153c66d28bdc888bb249c16f79b32a67d296b7cccac7dc452adb5a74fb535",
         intel: "c735dc8bf3917c1baf486159f08925ef40f5d088caf4fa333a0292fe08d237d6"

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

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
