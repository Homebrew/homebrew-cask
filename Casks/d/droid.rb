cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "822825bfdc3224b7e7b35deb9f1858a256ff34862e3119ff8e486cba76ed1947",
         intel: "ccb6d532ef04c5111a7d92bfc6dd125b086a499c4da175f6c13b5153c6992ef5"

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

  # No zap stanza required
end
