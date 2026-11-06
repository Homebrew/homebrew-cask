cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "d2df0e3ad1b97e2ac89c177c5325a2857e5c690f6a0e8b77b0240946ec578d0a",
         intel: "77dced16cd433b7e3bc5d29cb048e28946de6e4371a9d1661dd9a6effd7812b7"

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
