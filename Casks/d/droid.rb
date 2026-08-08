cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.190.0"
  sha256 arm:   "479b5a9c0656da69291a08c9113d0819deadf4015bbafacc6c8a67d5042c9f6c",
         intel: "6115a862ec7a3dc2f9d56a80456e4eaca6ae7d0aff5032ecb6c7a5b45d263c15"

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
