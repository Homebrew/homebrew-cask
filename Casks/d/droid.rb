cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.128.0"
  sha256 arm:   "32905b6c952c617a1148ee3d76f7ec0a87fa129e2cc6214a46f4f0218f6bf29b",
         intel: "7cfc66999a3d44f188247fb3daa27baeaee43b811e86be7abf9172c758eefda2"

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
