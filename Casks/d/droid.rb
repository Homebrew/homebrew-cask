cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.94.0"
  sha256 arm:   "df86ae98a57d6f550904271303a80ce05a745d6a39d59190c1f739ca58ba9743",
         intel: "262d214c66ee4a432d5223b7c5516f3caaaa54e06bdd1b868353267714c6e28a"

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
