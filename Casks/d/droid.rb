cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.98.0"
  sha256 arm:   "d5a3432531a07b166fdbf6c2333e1b2fdf017010b6d1376d46d01927432e51ad",
         intel: "819e371c9aa324039825cf590ca6fce6254bab84d0585055ded565dc07663faf"

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
