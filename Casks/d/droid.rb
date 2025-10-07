cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.19.2"
  sha256 arm:   "6e2ec201b9dd95d5618d44351ca3160b458551a55b4e3e27810d8da10fdf8ffa",
         intel: "74f33293093b6dbc9d02bcecce6ddfc9fbd6f1b9832f08858e4f4b92f9f59bc6"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "droid"

  # No zap stanza required
end
