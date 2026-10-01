cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.231.0"
  sha256 arm:   "dc1a345930c9800ed7eadd3f068afb5643674880f88c657b1cf5a5398617dcd8",
         intel: "bb825b0871ff059039a846d1656686b5d763b4eff3375744da60f0d73a474c26"

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
