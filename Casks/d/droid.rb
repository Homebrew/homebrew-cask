cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.8"
  sha256 arm:   "87137cca6f15902850ca25b016e729035de8228fa03abd989793b779ca501081",
         intel: "409a7143720bcf8fe7e71292376778ca00cc79afca5fc31ff47cffd617756ec6"

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
