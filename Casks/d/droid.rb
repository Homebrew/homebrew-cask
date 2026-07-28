cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.181.0"
  sha256 arm:   "d75b5385bf7bf0fa350f91013b49b16ec9c2dbcedf2a06504ecb704d651231ce",
         intel: "33a57568217e31ba2f73e227c27a8dd336abaeedf8009878ea40e10450913f2d"

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
