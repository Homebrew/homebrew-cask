cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.48.1"
  sha256 arm:   "3344185fbbbd187a8770f6cbf5d47bfaf0b6408531ae03783767120080269911",
         intel: "2aaffa35d9a09ce75c4e50d04b2b57b100a0b7d6ce182b9fe357db6a570df218"

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
