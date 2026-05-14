cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.125.1"
  sha256 arm:   "e3fa94695d1d177d8d1636039060f9faf99b759271c09a469bb85006a44f7592",
         intel: "44dfd7459ace1f726e89326fc7f948795b1fa2acb8135b12c7cfd3a5fdf1735a"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
