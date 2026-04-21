cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.105.0"
  sha256 arm:   "7c6e4f3a15ed0d441069758d58f9c2abbee4ae50c30a52228063962156704e5f",
         intel: "c4bd188b6ce8f08cc7aef24ed3dbae95692fbaf9ca826ff0362d327d9a2290ce"

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
