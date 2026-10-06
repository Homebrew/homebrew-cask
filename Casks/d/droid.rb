cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.234.0"
  sha256 arm:   "ad67570aeb21c693e35400dd35feef4efec0007995d381c151bb3dd9bd19cf66",
         intel: "0a39d64dc2c0c071a2a1f38646b9afc1389e8b4d5c219cd48d0663a0b57056d8"

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
