cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.232.0"
  sha256 arm:   "33256266656cad6c1a94bf875fd3ff16023f3043922e02e09567c38e41db7436",
         intel: "da1181a91827dfbc31e58d93f0444115f475f5b6de05515fb2ccd8c3ca033875"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
