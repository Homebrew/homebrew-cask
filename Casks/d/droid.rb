cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.80.0"
  sha256 arm:   "22d2d171fec214bc5703417663ce3a72d9745332485609460bfb58d06133b0be",
         intel: "e52ed99bc9f72de954edbb1a223e449c7b41b2cb602fc4c4ee2a1247e47ef222"

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
