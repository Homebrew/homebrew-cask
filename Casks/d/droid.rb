cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.54.1"
  sha256 arm:   "f09053bdff64a839496b7a31556fbc0cb7e79aa0d4d71c19152635fc5e45c90a",
         intel: "259b4887da961ff2b1e34bd67d9027a467297cfc1e3514606736d19f3dcbe040"

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
