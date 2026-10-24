cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.249.0"
  sha256 arm:   "fc61a51b3b65d913d828eebb10ebb441915d453cd6c6ae3cab78a16e459e4038",
         intel: "875f0ad084051ba3bb153ee15490b94c019f974773443237119e21043a3cca8b"

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
