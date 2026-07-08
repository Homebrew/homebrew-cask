cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.167.0"
  sha256 arm:   "96cae5b424d189002f9245e5435ef6acc1a08436666c50d30af64f0a2948b71c",
         intel: "0fbda9027aebedea937ad0bb84c60c4ed916b4f7c400ea98a3b9d4fc25e00ae3"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
