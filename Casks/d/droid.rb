cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "6f95114c03f06f939fb2783d55c96407442a69a29cbb1d6d24f82573c71de427",
         intel: "841e27d7d7020b691b9a8f6be833c940a0baec771cc7ec819cd306b879cd040a"

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
