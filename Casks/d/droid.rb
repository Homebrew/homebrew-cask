cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.196.0"
  sha256 arm:   "0d3128c702f65797c56c03cf0a3071b8af8efe7d3ce9e6e36aa47b07a3b95178",
         intel: "15772c0d779536227d5526f117c945cb3e146535560c9d2a2b8eef693016a5c9"

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
