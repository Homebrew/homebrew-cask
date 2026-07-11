cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.170.0"
  sha256 arm:   "222890fbcf30446a6944a52f5452f8bb28345a01475e5dc1aa3e533f686dd118",
         intel: "5776bd3c1b535b0639592d5c548803951db47faba57712db00f0810160d48b74"

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
