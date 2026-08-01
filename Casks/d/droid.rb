cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.186.0"
  sha256 arm:   "e7b078bd61d3850ec21095719721d0bda808212abfa5076da270975b62e4fa68",
         intel: "177405f0b7bac0c1d34940ebee2821f270d55187b68187536fe60e76d8a0b29f"

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
