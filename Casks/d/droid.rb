cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.6"
  sha256 arm:   "c725910e918e2c52a8742a30e601a073b514a70a4f0da7bbbf73fea359a495b6",
         intel: "0c83fd069723406a95928d369f1951dc31db97f40d3fcb487e123fb25efc1c44"

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
