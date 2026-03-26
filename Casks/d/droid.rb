cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.86.1"
  sha256 arm:   "ce25d14fc02f376ed81d7bc4b9aa893b41c909ded3f98f391e31aa92258547dc",
         intel: "5762aee180c3096fd81b1622b80787aae5df4cb43bbe4d3c1c8ebda21efcc5b9"

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
