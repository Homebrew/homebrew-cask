cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.132.1"
  sha256 arm:   "648fe9b5ed6c529ebbcf07e3e979f5a31537fa7b05c467b39aabf845eb7ff68a",
         intel: "9ffa44f61856e901a8173c7ace4959b3e6a94ccba86d1fbc5c45332fb5a63aee"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
