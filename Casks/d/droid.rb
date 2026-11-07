cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "b93842902913591726f4e668e332bc5ae2bdc8e0d3f9a0b3da4c37f19bba0db9",
         intel: "42ce935ed28c627149cdaa1536178851c73674d39329a1a506f44af4a05b011b"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
