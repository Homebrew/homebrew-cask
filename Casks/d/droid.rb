cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "a2693dd5c02262a182cfb3acbf9cb9d634ffd4f8d4af918742d77769ec27e431",
         intel: "ad7c5f7af862b04403c675551af2991e0bea9e3aef92d07e20a085b717e344ce"

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
