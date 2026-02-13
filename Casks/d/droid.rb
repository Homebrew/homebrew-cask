cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.13"
  sha256 arm:   "8213a0ec92afd321d92981c8c9e344c5c91867ec540322b1d33e5a8d99e4e87e",
         intel: "4d19a78b11ba4db68a768a14a97d4a507ba3a66ae54578035a3a3b83560dd7fb"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
