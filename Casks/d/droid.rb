cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.203.0"
  sha256 arm:   "e0d1f1969ae2971c7986def14127742e368d0de8e3d808dbd4bb380642d29147",
         intel: "ab92a1ede72216d8ebe7aa1a1cdec8a0760af57f84a1ccbf106738f995eed1fb"

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
