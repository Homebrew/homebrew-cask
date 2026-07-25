cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.180.0"
  sha256 arm:   "b0c55798cca081c72856f216fbbec21e0f5b28bc6d3856d992e0d059cadde1c5",
         intel: "7c72d11fb173ea9a927030e81bf952ffe8ee989ce01ee72ac79bd44a8c30d8e4"

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
