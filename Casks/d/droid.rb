cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.239.1"
  sha256 arm:   "308a24c3d2970e999302e3813f499153d28a387423a1983740454b4ea6e448bf",
         intel: "3f54b4eaa53a9966ba61df4edb2148ec5fd7a38a18e2dc3602d6163d0c3894d7"

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
