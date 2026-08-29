cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.208.1"
  sha256 arm:   "2397c2bfcb6ad7deb098cdbfe5ba6d3098f55e97c46232dfae9ab96630a2675b",
         intel: "9d77cd000259650b1c4324c8d96dd7c4e05481a970b8d0ed15e5c910148eae12"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
