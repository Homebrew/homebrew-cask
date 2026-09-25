cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.227.0"
  sha256 arm:   "d086ee371842583a7acab03bcb6176c07598736a42a263c02162aa956ed851e8",
         intel: "144bea83b735e21d39571f137cfe8de213b39e10e8038e00f4f8f107d07954e1"

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
