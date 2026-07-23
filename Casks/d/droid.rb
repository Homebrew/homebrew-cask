cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.179.0"
  sha256 arm:   "5ccc55c4cc194944d0252d416d254ac9730345a4ac9fe7c2a908bc1e3d5bdbfe",
         intel: "9e6be81d4a96aad1c88c554b391245efa14a972b739a818bea0fd7a5ccf6cd50"

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
