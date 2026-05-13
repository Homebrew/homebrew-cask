cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.124.0"
  sha256 arm:   "3b7c97456f81e45def2b2da1717e8b3b791cb9a91849bf83f60f62ac5b2fa507",
         intel: "ba64ff83a834a3848e06843711ebfd093fb519aaa68c9908ce0414f3eae74552"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
