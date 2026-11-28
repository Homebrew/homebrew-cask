cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.23.0"
  sha256 arm:   "843c27898e2715f2d42c0715a4446427d874fb68219d16c0be7aedfc7c6f603e",
         intel: "32322286f820c0feb4267202dea51073c3daafd4c8ea8127682e150b87dff5f0"

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
