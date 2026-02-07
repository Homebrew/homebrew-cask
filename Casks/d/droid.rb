cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.7"
  sha256 arm:   "f5a9a644c9ab05b74887d2696e8612bec0f65702802fc212a1d4f10e3ae95b83",
         intel: "7a4fcd64b69e82b2978f67f2b6855579bf20edf50ffa961e234dbff00a4f48c4"

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
