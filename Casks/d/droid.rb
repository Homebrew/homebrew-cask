cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.104.1"
  sha256 arm:   "f7b71d93b69ec9b6edad87e06a31cfbf2b29fe0dc4c7f905e647869beb21640c",
         intel: "22d800861e3736b0e0e0c4bb3b56ecc84dcb1386de0b7d094c5df080ae62d5d3"

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
