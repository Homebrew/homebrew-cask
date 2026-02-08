cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.9"
  sha256 arm:   "3f4faf1101b4f459b9b060ec1cf16e76feb8d471024a356173e47036575cd13c",
         intel: "0e7ff825900d79a653028a44001843227887872a6b6496f3cd4287a4ee1b29a6"

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
