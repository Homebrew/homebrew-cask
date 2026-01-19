cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.53.1"
  sha256 arm:   "cbe78b9c27d8723ed145aa456df6a9111dd77b591298ab223da25549557acf51",
         intel: "3b33c3ed4e47433f451b36912749beac575e9f5ad700dde6cfc81fd132539154"

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
