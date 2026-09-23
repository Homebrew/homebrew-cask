cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.225.2"
  sha256 arm:   "a409d303a24183364623a495c3c815e957d45a8860ec4df988900b766a023ada",
         intel: "2b515e7492fe767a1de23bc0e00ec167493b203b683df9349db119c1f75e5560"

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
