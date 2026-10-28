cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.251.0"
  sha256 arm:   "d3c0b87ff7cf942ee40a954ffa00204125d29241fe5e4ef458643622b74c25f9",
         intel: "42e6fa414a9c543c37b5a13387c9fc9d6c0421a816a2da9d2fd675324dce18d2"

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
