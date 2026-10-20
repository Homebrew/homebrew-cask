cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.245.0"
  sha256 arm:   "150f9747e48858b65dc07c68170708bffd85953729f8e6f01467c56b4aa67542",
         intel: "a4533b6fdd7107dcd0d68dd54807ef1cd61a6727c8ccfc239a1018ea363b7e90"

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
