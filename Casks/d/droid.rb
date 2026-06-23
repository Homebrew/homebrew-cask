cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.157.0"
  sha256 arm:   "37ef5a857d05eb7c86c85d98c231a862e43eac02b58fd5871868595caee1de3d",
         intel: "8a52d5681bb2b3c78e4d0359e99240b859ea693430e0c7e2d51de995f5f12d3c"

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
