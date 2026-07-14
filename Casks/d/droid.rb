cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.171.0"
  sha256 arm:   "f7c4474b6195f19d307887b8acf59c34b8303e3896a803d0bfd866fa6c6ad071",
         intel: "296154c50986656d64394eef5f6cd254930585160b4c120ea29fe28987737a8c"

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
